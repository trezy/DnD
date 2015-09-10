define [
  'marionette'
  'Route'
  'c/Towns'
  'v/TownList'
], (
  Marionette
  Route
  TownsCollection
  TownListView
) ->
  class TownList extends Route
    show: ( params ) ->

      unless app.data.towns
        app.data.towns = new TownsCollection

      @view = new TownListView collection: app.data.towns

      app.main.show @view, replaceElement: true
