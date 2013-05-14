define ->
    describe 'Spies, Stubs, Mocks... with Sinon.js', ->

        api = null

        beforeEach ->
            api =
                method: -> console.log 'blah'

        it 'has spies', ->
            cb = sinon.spy()
            cb(42)
            expect(cb).to.be.calledOnce
            expect(cb).to.be.calledWith 42

        it 'has stubs', ->
            cb = sinon.stub(api, 'method').returns 42
            result = api.method()
            expect(result).to.equal 42

        it 'has mocks', ->
            mock = sinon.mock api
            mock.expects('method').once()

            api.method()

            mock.verify()
