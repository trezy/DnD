define [
  'marionette'
  'v/NavLink'
  'hbs!tpl/nav'
  'hbs!tpl/navLink'
], (
  Marionette
  NavLinkView
  navTemplate
  navLinkTemplate
) ->
  class Nav extends Marionette.CompositeView
    template: navTemplate

    tagName: 'nav'

    className: 'application-nav'

    childView: NavLinkView

    childViewContainer: 'ul'

    collection: new Backbone.Collection [{
      url: '/towns'
      name: 'Towns'
    }, {
      url: '/characters'
      name: 'Characters'
    }]
