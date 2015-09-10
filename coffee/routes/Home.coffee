define [
  'marionette'
  'Route'
  'v/Home'
], (
  Marionette
  Route
  HomeView
) ->
  class Home extends Route
    view: new HomeView
