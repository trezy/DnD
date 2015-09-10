define [
  'marionette'
  'hbs!tpl/characterSummary'
], (
  Marionette
  characterSummaryTemplate
) ->
  class CharacterSummary extends Marionette.LayoutView
    template: characterSummaryTemplate

    tagName: 'li'

    className: 'character-summary-view'
