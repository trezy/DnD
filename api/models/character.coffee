mongoose = require 'mongoose'
Schema = mongoose.Schema

abilityModifier = ( score ) ->
  Math.floor( score / 2 ) - 5

CharacterSchema = new Schema
  'background': String
  'class': String
  'ethics': String
  'level': Number
  'morals': String
  'name': String
  'race': String

  'strength': Number
  'dexterity': Number
  'constitution': Number
  'intelligence': Number
  'wisdom': Number
  'charisma': Number

CharacterSchema.set 'toJSON', virtuals: true

module.exports = mongoose.model 'Character', CharacterSchema
