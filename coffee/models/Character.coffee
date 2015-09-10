define [
  'moment'
  'marionette'
  'm/Base'
], (
  moment
  Marionette
  BaseModel
) ->
  class Character extends BaseModel
    updateModifier: ( ability ) ->
      score = @get ability
      @set ability + '-modifier', Math.floor( score / 2 ) - 5

    updateStrengthModifier: ->
      @updateModifier 'strength'

    updateDexterityModifier: ->
      @updateModifier 'dexterity'

    updateConstitutionModifier: ->
      @updateModifier 'constitution'

    updateIntelligenceModifier: ->
      @updateModifier 'intelligence'

    updateWisdomModifier: ->
      @updateModifier 'wisdom'

    updateCharismaModifier: ->
      @updateModifier 'charisma'

    url: ->
      @urlRoot + '/characters'

    initialize: ->
      super()

      @updateStrengthModifier()
      @updateDexterityModifier()
      @updateConstitutionModifier()
      @updateIntelligenceModifier()
      @updateWisdomModifier()
      @updateCharismaModifier()

      @on 'change:strength', @updateStrengthModifier
      @on 'change:dexterity', @updateDexterityModifier
      @on 'change:constitution', @updateConstitutionModifier
      @on 'change:intelligence', @updateIntelligenceModifier
      @on 'change:wisdom', @updateWisdomModifier
      @on 'change:charisma', @updateCharismaModifier
