define [
  'marionette'
], (
  Marionette
) ->
  class Route extends Marionette.Object
    appChannel: Backbone.Radio.channel 'application'

    routerChannel: Backbone.Radio.channel 'router'

    show: ->
      app.main.show @view, replaceElement: true

    onError: ( error ) ->
      console.error error
