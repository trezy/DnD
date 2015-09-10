define [
  'marionette'
  'c/Characters'
  'm/Character'
  'hbs!tpl/characterDetails'
], (
  Marionette
  CharactersCollection
  CharacterModel
  characterDetailsTemplate
) ->
  class CharacterDetails extends Marionette.LayoutView
    events:
      'submit form': 'onSubmit'

    bindings:
      '#background': 'background'
      '#class': 'class'
      '#ethics': 'ethics'
      '#morals': 'morals'
      '#name': 'name'
      '#level': 'level'
      '#race': 'race'

      '#strength': 'strength'
      '#strength-modifier': 'strength-modifier'
      '#dexterity': 'dexterity'
      '#dexterity-modifier': 'dexterity-modifier'
      '#constitution': 'constitution'
      '#constitution-modifier': 'constitution-modifier'
      '#intelligence': 'intelligence'
      '#intelligence-modifier': 'intelligence-modifier'
      '#wisdom': 'wisdom'
      '#wisdom-modifier': 'wisdom-modifier'
      '#charisma': 'charisma'
      '#charisma-modifier': 'charisma-modifier'

    template: characterDetailsTemplate

    tagName: 'main'

    id: 'character-details-view'

    onSubmit: ( event ) ->
      app.data.characters.set @model

      @model.save()

    onRender: ->
      @_bindUIElements()
      @stickit()

    initialize: ->
      unless @model
        @model = new CharacterModel
