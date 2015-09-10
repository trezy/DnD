require.config
  paths:

    # Templates
    tpl: '../templates'

    # Folder Shortcuts
    ctrl: 'controllers'
    r: 'routes'
    c: 'collections'
    m: 'models'
    v: 'views'
    s: 'shims'

    # RequireJS Plugins
    hbs: '../bower_components/require-handlebars-plugin/hbs'

    # Libraries
    'backbone': '../bower_components/backbone/backbone'
    'backbone.babysitter': '../bower_components/backbone.babysitter/lib/backbone.babysitter'
    'backbone.base-router': '../bower_components/backbone.base-router/dist/backbone.base-router'
    'backbone.hoard': '../bower_components/backbone.hoard/dist/backbone.hoard'
    'backbone.intercept': '../bower_components/backbone.intercept/dist/backbone.intercept'
    'backbone.marionette': '../bower_components/marionette/lib/core/backbone.marionette'
    'backbone.radio': '../bower_components/backbone.radio/build/backbone.radio'
    'backbone.stickit': '../bower_components/backbone.stickit/backbone.stickit'
    'backbone.wreqr': '../bower_components/backbone.wreqr/lib/backbone.wreqr'
    'handlebars': '../bower_components/handlebars/handlebars'
    'jquery': '../bower_components/jquery/dist/jquery'
    'messenger': '../bower_components/messenger/build/js/messenger'
    'moment': '../bower_components/moment/moment'
    'paperjs': '../bower_components/paper/dist/paper-core'
    'underscore': '../bower_components/underscore/underscore'

  map:
    '*':
      'marionette': 'backbone.marionette'
      'radio': 'backbone.radio'

  shim:
    underscore:
      exports: '_'

    backbone:
      deps: [
        'jquery'
        'underscore'
      ]
      exports: 'Backbone'

    messenger:
      deps: [
        'jquery'
        'backbone'
      ]

    handlebars:
      exports: 'Handlebars'

  hbs:
    disableI18n: true
    partialsUrl: '../templates'





require [
  's/marionette.radio'
  's/marionette.replaceElement'
  'marionette'
  'backbone.stickit'
  'messenger'
  'radio'
  'paperjs'
  'App'
  'Router'
  'v/Root'
], (
  radioShim
  replaceElementShim
  mn
  stickit
  messenger
  radio
  paperjs
  App
  Router
  RootView
) ->
  # Attach our application object to the window for easy access
  window.app = app = new App

  # Install PaperJS on the window
  paper.install window

  # Initialize the router
  app.router = new Router

  # Attach all of our views to the application object
  app.rootView = new RootView

  # Start the application
  app.start()
