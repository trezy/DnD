define [
  'marionette'
  'hbs!tpl/TownList'
  'v/TownSummary'
], (
  Marionette
  townListTemplate
  TownSummaryView
) ->
  class TownList extends Marionette.CompositeView
    template: townListTemplate

    tagName: 'main'

    id: 'town-list-view'

    childView: TownSummaryView

    childViewContainer: 'ul'
