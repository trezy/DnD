define [
  'marionette'
], (
  Marionette
) ->
  class Base extends Backbone.Collection
    applicationChannel: Backbone.Radio.channel 'application'

    urlRoot: location.protocol + '//' + location.hostname + ':' + 8080 + '/api'

    initialize: ->
      @fetch async: false
