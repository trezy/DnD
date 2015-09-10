define [
  'marionette'
  'hbs!tpl/navLink'
], (
  Marionette
  navLinkTemplate
) ->
  class NavLink extends Marionette.LayoutView
    template: =>
      navLinkTemplate @model.attributes

    tagName: 'li'
