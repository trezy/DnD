define [
  'marionette'
  'hbs!tpl/characterList'
  'v/CharacterSummary'
], (
  Marionette
  characterListTemplate
  CharacterSummaryView
) ->
  class CharacterList extends Marionette.CompositeView
    template: characterListTemplate

    tagName: 'main'

    id: 'character-list-view'

    childView: CharacterSummaryView

    childViewContainer: 'ul'
