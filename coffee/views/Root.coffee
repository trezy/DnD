define [
  'marionette'
  'messenger'
  'v/Header'
  'hbs!tpl/root'
], (
  Marionette
  messenger
  HeaderView
  rootTemplate
) ->
  class Root extends Marionette.LayoutView
    el: $ 'body'

    template: rootTemplate

    regions:
      header: '.application-header'
      main: 'main'

    initialize: ->
      # Attach our regions to the main application object for use across the
      # application.
      app.header = @header
      app.main = @main

      # Render the base elements that will become the Application's regions
      @render()

      # Insert the main page content
      @header.show new HeaderView, replaceElement: true

      # Hook Messenger into all Backbone AJAX calls
      Messenger.options =
        extraClasses: 'messenger-fixed messenger-on-bottom messenger-on-right'
        showCloseButton: true
        theme: 'air'

      Messenger().hookBackboneAjax()
