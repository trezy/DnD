define [
  'marionette'
], (
  Marionette
) ->
  class Base extends Backbone.Model
    # sync: -> app.cacheControl.getModelSync()

    urlRoot: location.protocol + '//' + location.hostname + ':' + 8080 + '/api'

    initialize: ->
      @fetch async: false
