define ['jquery'], ($) ->

    renderer = (canvasId) ->
        that = {}

        canvas = $('#'+canvasId)
        ctx = canvas[0].getContext '2d'

        that.renderRectangle = (rect) ->
            if ctx?
                ctx.fillStyle = rect.color
                ctx.fillRect rect.x, rect.y, rect.width, rect.height

        that.renderCircle = (c) ->
            if ctx?
                ctx.fillStyle = c.color
                ctx.beginPath()
                ctx.arc c.x, c.y, c.radius, 0, 2*Math.PI
                ctx.fill()

        that

