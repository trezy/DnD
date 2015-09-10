define [
  'paperjs'
  'paper/shapes/Square'
  'paper/projects/Map'
], (
  paperjs
  Square
  Map
) ->
  class SquareMap extends Map
    tileType: Square

    drawGrid: ->
      columns = @width / @tileSize
      rows = @height / @tileSize
      totalTiles = Math.ceil columns * rows

      for r in [ 0...rows ]
        for c in [ 0...columns ]
          center = new Point @tileRadius, @tileRadius
          position = new Point r * @tileRadius, c * @tileRadius

          tile = new @tileType center, @tileRadius
          tile.position = position

          @tiles.push tile

      @layers.grid = new Layer
        children: @tiles
        name: 'Grid'
        opacity: 0.5
        strokeColor: 'black'
