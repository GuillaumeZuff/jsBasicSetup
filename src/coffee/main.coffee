requirejs.config {
    baseUrl: '/js'
    shim:
        'jquery':
            exports: '$'
    paths:
        'jquery':'../lib/jquery'
}

requirejs ['rectangle', 'circle', 'renderer'], (Rectangle, Circle, rendererF) ->
    renderer = rendererF 'canvas'
    rect = new Rectangle 100,100,50,80
    circle = new Circle 200,200,30
    rect.color = '#ff0000'
    circle.color = '#00ff00'
    renderer.renderRectangle rect
    renderer.renderCircle circle
