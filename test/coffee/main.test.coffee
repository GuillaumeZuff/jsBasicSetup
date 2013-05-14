requirejs.config {
    baseUrl: '../js'
    urlArgs: 'v='+(new Date()).getTime()
    paths:
        test: '../test/js'
        lib: '../test/lib'
}

requirejs ['lib/chai', 'lib/sinon', 'lib/sinon-chai', 'lib/mocha'], (chai, sinon, sinonchai) ->
    window.expect = chai.expect
    chai.use sinonchai
    mocha.setup 'bdd'
    #requirejs ['test/rectangle.test'], () ->
    requirejs ['test/rectangle.test', 'test/mocks.test'], () ->
        mocha.run()
