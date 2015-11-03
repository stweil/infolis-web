module.exports = setupRoutes = (app, opts) ->
	opts or= {}

	# restful handlers
	app.schemo.handlers.restful.inject(app)

	# schema handlers
	app.schemo.handlers.schema.inject(app)
	
	# Schema handler for the ontology, i.e. /schema
	app.get(app.schemo.schemaPrefix,
		(req, res, next) ->
			req.jsonld = app.schemo.jsonldTBox()
			next()
		app.jsonldMiddleware)

	# swagger handler
	app.schemo.handlers.swagger.inject app, {
		basePath: "/infolink"
		info:
			title: 'Infolis YAY'
		paths:

			'/upload':
				post:
					tags: ['custom']
					description: "Upload a file"
					parameters: [
						{
							name: 'file'
							in: 'formData'
							type: 'file'
						}
						{
							name: 'mediaType'
							in: 'formData'
							type: 'string'
						}
					]
					responses:
						201:
							description: 'File was uploaded'
							headers:
								'Location': {
									description: 'The location of the InfolisFile'
									type: 'string'
									format: 'uri'
								}
							schema:
								$ref: "#/definitions/InfolisFile"
						400:
							description: 'Upload failed'
						502:
							description: 'Backend is down.'
						500:
							description: 'Backend failed.'

			'/execute':
				post:
					tags: ['custom']
					description: "Post an execution and run it on the backend."
					consumes: ['multipart/form-data']
					produces: ['application/json']
					parameters: [
						{
							name: 'algorithm'
							in: 'formData'
							type: 'array'
							items: {
								type: 'string'
							}
						}
						{
							name: 'something'
							in: 'formData'
							type: 'string'
						}
					]
					responses:
						201:
							description: 'Successfully started the execution'
							headers:
								'Location': {
									description: 'The location of the execution'
									type: 'string'
									format: 'uri'
								}
						400:
							description: 'Posting of the execution failed before execution. Verify it is valid by posting it directly.'
						500:
							description: 'Backend failed.'
	}