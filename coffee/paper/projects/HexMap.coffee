define [
  'paperjs'
  'paper/shapes/Hexagon'
], (
  paperjs
  Hexagon
) ->
  class HexMap extends Map
    drawGrid: ->
