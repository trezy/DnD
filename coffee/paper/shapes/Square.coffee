define [
  'paperjs'
], (
  paperjs
) ->
  class Square
    constructor: ( center, @radius ) ->
      @center = new Point center
      @size = new Size @radius * 2, @size * 2

      @shape = Path.Rectangle @center, @radius

      return @shape
