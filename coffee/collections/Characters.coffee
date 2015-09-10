define [
  'marionette'
  'c/Base'
  'm/Character'
], (
  Marionette
  BaseCollection
  CharacterModel
) ->
  class Characters extends BaseCollection

    model: CharacterModel

    url: ->
      @urlRoot + '/characters'
