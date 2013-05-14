jsBasicSetup
============

Basic javascript app setup, using CoffeeScript, Grunt, RequireJS and Mocha (Unit testing)

What you need
-------------

Install [Node.js](http://www.nodejs.org)

Libraries/modules used
--------------

* [Grunt](http://gruntjs.com): node module
* [Connect](http://www.senchalabs.org/connect/): node module
* [requireJs](http://requirejs.org)
* [coffeeScript](http://coffeescript.org)
* [mocha](http://visionmedia.github.io/mocha/)
* [chai](http://chaijs.com)
* [sinon](http://sinonjs.org)
* [sinon-chai](https://github.com/domenic/sinon-chai)


Setup
-----

1. Clone the repository
2. Open a terminal and navigate to the repository
3. Install node modules: npm install
4. Compile/build: grunt
5. Start the server: node server.js
6. Run the app: point a webbrowser to http://localhost:4000
6. Run the tests: point a webbrowser to http://localhost:4000/test/
7. That's it!

How it works
------------

This basic setup is a simple javascript application, written in CoffeeScript, using RequireJS to load modules. It provides unit tests, running with Mocha, Chai and Sinon.
The build process (compilation to javascript and packaging to a single file) is automated using a Node.js module, Grunt. Another Node.js module, Connect, is used to run a webserver responsible for serving the app and running the unit tests.

### Directory structure

* Gruntfile.js: configuration file for Grunt, defines tasks (CoffeScript compilation, RequireJs packaging, cleaning, ...)
* README.md: this file
* package.json: used by the "npm install" command, lists necessary node.js modules
* server.js: the webserver, to start it, type: "node server.js"
* src: source files directory
* test: test files directory

### Automatically compile/build on files changes
Just run "grunt watch" in the base directory of the repository and any change to a .coffee file in the src directory will trigger a compilation and build process.
Any change to a .coffee file in the test directory will compile the test files.
