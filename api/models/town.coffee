mongoose = require 'mongoose'
Schema = mongoose.Schema

TownSchema = new Schema
  'captainOfTheGuard': String
  'ethics': String
  'governingBody': String
  'name': String
  'morals': String
  'population': Number
  'systemOfGovernment': String
  'wealth': Number

TownSchema.set 'toJSON', virtuals: true

module.exports = mongoose.model 'Town', TownSchema
