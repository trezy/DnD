define [
  'backbone.hoard'
  'backbone.intercept'
  'marionette'
], (
  BackboneHoard
  BackboneIntercept
  Marionette
) ->
  class App extends Marionette.Application
    authenticate: ->
      true

    cacheControl: new BackboneHoard.Control

    channel: Backbone.Radio.channel 'application'

    config:
      api:
        port: 8080

    data: {}

    onStart: ->
      Backbone.history.start pushState: true
      BackboneIntercept.start()
