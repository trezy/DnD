define [
  'paperjs'
], (
  paperjs
) ->
  class Map
    layers: {}

    tiles: []

    constructor: ( $el, @tileSize = 100 ) ->
      @$el = $el

      @tileRadius = @tileSize / 2

      paper.setup @$el

      @height = @$el.height()
      @width = @$el.width()

      horizontalCenter = @width / 2
      verticalCenter = @height / 2

      @center = new Point verticalCenter, horizontalCenter

      @drawGrid()
