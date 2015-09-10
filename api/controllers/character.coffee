Character = require '../models/character'

character = new Character

exports.post = ( request, response, respond = true ) ->
  character.background = request.body.background
  character.class = request.body.class
  character.ethics = request.body.ethics
  character.level = request.body.level
  character.morals = request.body.morals
  character.name = request.body.name
  character.race = request.body.race

  character.strength = request.body.strength
  character.dexterity = request.body.dexterity
  character.constitution = request.body.constitution
  character.intelligence = request.body.intelligence
  character.wisdom = request.body.wisdom
  character.charisma = request.body.charisma

  character.save ( error ) ->
    if error?
      response.send error
    if respond
      response.json character
  character

exports.get = ( request, response ) ->
  Character.find ( error, characters ) ->
    if error?
      response.send error
    response.json characters
