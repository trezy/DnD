define [
  'marionette'
  'Route'
  'v/Login'
], (
  Marionette
  Route
  LoginView
) ->
  class Login extends Route
    show: ( params ) ->

      @view = new LoginView

      app.main.show @view, replaceElement: true
