define [], () ->
    Circle = (x,y,radius) ->
        this.x = x
        this.y = y
        this.radius = radius
        this.color = '#000000'
        this

    Circle.prototype.translate = (x,y) ->
        this.x += x
        this.y += y

    Circle.prototype.scale = (s) ->
        this.radius *= s

    Circle
