define [
  'marionette'
  'Route'
  'c/Characters'
  'v/CharacterList'
], (
  Marionette
  Route
  CharactersCollection
  CharacterListView
) ->
  class CharacterList extends Route
    show: ( params ) ->

      unless app.data.characters
        app.data.characters = new CharactersCollection

      if app.data.characters.length
        @view = new CharacterListView collection: app.data.characters
        app.main.show @view, replaceElement: true
      else
        app.router.navigate '/characters/new/', true
