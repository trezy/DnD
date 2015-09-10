define [
  'marionette'
  'v/Nav'
  'hbs!tpl/header'
], (
  Marionette
  NavView
  headerTemplate
) ->
  class Header extends Marionette.LayoutView
    template: headerTemplate

    tagName: 'header'

    id: 'application-header'

    regions:
      nav: '.application-nav'

    onBeforeShow: ->
      @nav.show new NavView, replaceElement: true
