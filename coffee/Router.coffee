define [
  'marionette'
  'backbone.base-router'
  'r/CharacterDetails'
  'r/CharacterList'
  'r/Login'
  'r/SquareMap'
  'r/TownDetails'
  'r/TownList'
], (
  Marionette
  BaseRouter
  CharacterDetailsRoute
  CharacterListRoute
  LoginRoute
  SquareMapRoute
  TownDetailsRoute
  TownListRoute
) ->
  class Router extends BaseRouter

    channel: Backbone.Radio.channel 'router'

    onNavigate: ( routeData ) ->

      @channel.trigger 'before:navigate'

      if not app.authenticate() and routeData.uriFragment.indexOf( 'login' ) is -1
        console.error 'NOT AUTHENTICATED'
        this.navigate 'login', trigger: true
        return

      routeData.linked.show routeData.params

      @channel.trigger 'navigate'

    routes:

      'characters/:character(/)': new CharacterDetailsRoute

      'characters(/)': new CharacterListRoute

      'towns/:town(/)': new TownDetailsRoute

      'towns(/)': new TownListRoute

      'maps(/)': new SquareMapRoute

      'login(/)': new LoginRoute

      '*notfound': new TownListRoute
