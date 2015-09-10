define [
  'marionette'
  'Route'
  'c/Towns'
  'v/TownDetails'
], (
  Marionette
  Route
  TownsCollection
  TownDetailsView
) ->
  class TownDetails extends Route
    show: ( params ) ->

      unless app.data.towns
        app.data.towns = new TownsCollection

      @town = app.data.towns.findWhere name: params.town

      @view = new TownDetailsView model: @town

      app.main.show @view, replaceElement: true
