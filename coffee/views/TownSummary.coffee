define [
  'marionette'
  'hbs!tpl/townSummary'
], (
  Marionette
  townSummaryTemplate
) ->
  class TownSummary extends Marionette.LayoutView
    template: townSummaryTemplate

    tagName: 'li'

    className: 'town-summary-view'
