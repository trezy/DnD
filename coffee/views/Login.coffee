define [
  'marionette'
  'hbs!tpl/login'
], (
  Marionette
  loginTemplate
) ->
  class Login extends Marionette.LayoutView
    template: loginTemplate
