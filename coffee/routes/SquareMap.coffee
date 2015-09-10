define [
  'marionette'
  'Route'
  'v/SquareMap'
], (
  Marionette
  Route
  SquareMapView
) ->
  class SquareMap extends Route
    show: ( params ) ->
      @view = new SquareMapView

      app.main.show @view, replaceElement: true
