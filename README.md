infolis-web
===========

Infolis Web services

Licenses
--------

This software is licensed under the [MIT license](./LICENSE) terms.

These are the licenses of the bundled libraries, for those pulled in using
`npm` please refer to the individual packages.

| Library                                     | License      |
+---------------------------------------------+--------------|
| [Viz.js](https://github.com/mdaines/viz.js) | BSD 3-Clause |
| [Bootstrap](https://getbootstrap.com)       | MIT          |


The following guide will enable you to set up and reuse the infolis web services on your local system.

We recommend to set up your environment on a linux system.


### Step 1: Set up your Working environment for InFoLiS-Web

To run and work infolis-web properly, you first have to fulfill the requirements by setting up a working environment on your system as described below:

Install Git, cURL, Nodesource, NodeJS, Raptor2 Utilities and MongoDB (in this order)

#### Git
In order to receive your local copy of infolis web services later, you have to install git.
Open your shell and type

`sudo apt-get install git`

#### cURL
cURL (CURL URL Request Library) is an open source library and command line tool for transferring data using various protocols. If cURL is not installed while working on InFoLiS web services, you will get a screen full of errors and an empty ~/.shcolor.sh file.

Open your shell and type

`sudo apt-get install curl`

#### Nodesource
Install the Nodesource repository as described [here](https://github.com/nodesource/distributions#manual-installation):

Open your shell and type

`curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -`
`echo 'deb https://deb.nodesource.com/{VERSION} {DISTRO} main'`

Replace "VERSION" with your version (e.g. 4.0) and "DISTRO" with "vivid".

After receiving Nodesource, type

`sudo apt-get update`

#### NodeJS
Node.js is a JaVaScript runtime designed to build scalable network applications.

Open your shell and type

`sudo apt-get install nodejs`

Be sure that you have NodeJS Version 4.0.0 or later. You can look up your version by typing 
`nodejs --version`

#### Raptor2 Utilites
Raptor 2 RDF parser and serializer utilities provides the rapper tool for validation, parsing and serializing RDF syntaxes.

Open your shell and type

`sudo apt-get install raptor2-utils`

#### MongoDB
MongoDB is an open source database.

Open your shell and type

`sudo-apt get install mongodb`

#### npm
npm is a package manager for JavaScript. You will need it to run the services.

Open your shell and type

`npm install --verbose`

### Step 2: Clone the infolis project repositories

Login to your GitHub Account and fork the following repositories:

[Infolis.github.io](https://github.com/infolis/infolis.github.io)

[Infolis-web](https://github.com/infolis/infolis-web)

Make new directories for both repositories and clone them to receive your local copy.

`git clone git@github.com:yourgithub/infolis.github.io`

`git clone git@github.com:yourgithub/infolis-web`

### Step 3: Get the project running
 
Host the Services on your local server. You can serve `infolis.github.io` via Jekyll and `infolis-web` via npm.

#### Infolis.github.io
`Infolis.github.io` contains the landing page for the project and additional information.

cd to your `infolis.github.io` directory and type

`jekyll serve`

Open your browser. `infolis.github.io` will be available under `localhost:4000`.

#### Infolis-web
Infolis-web contains all the web services of InFoLiS.

cd to your `infolis-web`directory and type

`npm run start`

to host the web services under `localhost:3000/`.

The following services are available:

* API Explorer: `localhost:3000/api`
* Raptor Graph Serialisation (Infolink Schema): `localhost:3000/schema`
* Linked Data Fragments: `localhost:3000/api/ldf`
* Monitor: `http://localhost:3000/api/monitor`
* Datastore stats: `localhost:3000/api/stats`



