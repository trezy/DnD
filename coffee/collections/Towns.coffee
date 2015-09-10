define [
  'marionette'
  'c/Base'
  'm/Town'
], (
  Marionette
  BaseCollection
  TownModel
) ->
  class Towns extends BaseCollection

    model: TownModel

    url: '/data/towns.json'
