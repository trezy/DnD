# Clear the console for debugging
console.clear()

paper.install window

##################################################
# Shapes
##################################################
class Square
  constructor: ( center, @radius ) ->
    @center = new Point center
    @size = new Size @radius * 2, @size * 2

    @shape = Path.Rectangle @center, @radius

    return @shape

#class Square
#  constructor: ( center, @radius ) ->
#    @center = new Point center
#
#    @shape = Path.RegularPolygon @center, 4, @radius
#
#    return @shape


class Hexagon
  constructor: ( center, @radius ) ->
    @center = new Point center

    @shape = Path.RegularPolygon @center, 6, @radius

    return @shape


##################################################
# Maps
##################################################
class Map
  layers: {}

  tiles: []

  constructor: ( id, @tileSize = 100 ) ->
    @el = document.querySelector id

    @tileRadius = @tileSize / 2

    paper.setup @el

    @height = @el.offsetHeight
    @width = @el.offsetWidth

    horizontalCenter = @width / 2
    verticalCenter = @height / 2

    @center = new Point verticalCenter, horizontalCenter

    @drawGrid()

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

class HexMap extends Map
  drawGrid: ->


# Create the Map
map = new SquareMap '#map'

paper.view.draw()
