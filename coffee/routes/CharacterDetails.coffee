define [
  'marionette'
  'Route'
  'm/Character'
  'c/Characters'
  'v/CharacterDetails'
], (
  Marionette
  Route
  CharacterModel
  CharactersCollection
  CharacterDetailsView
) ->
  class CharacterDetails extends Route
    show: ( params ) ->

      viewOptions = {}

      unless app.data.characters
        app.data.characters = new CharactersCollection

      @character = app.data.characters.findWhere name: params.character

      if @character?
        viewOptions.model = @character

      @view = new CharacterDetailsView viewOptions

      app.main.show @view, replaceElement: true
