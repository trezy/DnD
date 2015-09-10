define [
  'paperjs'
], (
  paperjs
) ->
  class Hexagon
    constructor: ( center, @radius ) ->
      @center = new Point center

      @shape = Path.RegularPolygon @center, 6, @radius

      return @shape
