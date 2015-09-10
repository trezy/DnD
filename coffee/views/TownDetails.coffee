define [
  'marionette'
  'hbs!tpl/townDetails'
], (
  Marionette
  townDetailsTemplate
) ->
  class TownDetails extends Marionette.LayoutView
    template: townDetailsTemplate

    tagName: 'main'

    id: 'town-details-view'
