define [
  'marionette'
  'paper/projects/SquareMap'
  'hbs!tpl/map'
], (
  Marionette
  SquareMapProject
  mapTemplate
) ->
  class SquareMap extends Marionette.LayoutView
    template: mapTemplate

    onShow: ->
      #paper.view.draw()

    initialize: ->
      @map = new SquareMapProject $ 'canvas'
