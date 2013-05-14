define ['rectangle'], (Rectangle) ->
    describe 'Rectangle', ->

        r = null

        beforeEach ->
            r = new Rectangle 10, 10, 50, 40

        it 'translate modifies x-y coordinates', ->
            r.translate 1,2
            expect(r.x).to.equal 11
            expect(r.y).to.equal 12

        it 'scale modifies width and height', ->
            r.scale 3, 4
            expect(r.width).to.equal 150
            expect(r.height).to.equal 160
