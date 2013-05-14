define ->
    Rectangle = (x,y,width,height) ->
        this.x = x
        this.y = y
        this.width = width
        this.height = height
        this.color = '#000000'
        this

    Rectangle.prototype.translate = (x,y) ->
        this.x += x
        this.y += y

    Rectangle.prototype.scale = (x,y) ->
        this.width *= x
        this.height *= y

    Rectangle
