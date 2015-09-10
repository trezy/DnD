Town = require '../models/town'

exports.post = ( request, response, respond = true ) ->
  town = new Town

  town.captainOfTheGuard = request.body.captainOfTheGuard
  town.ethics = request.body.ethics
  town.governingBody = request.body.governingBody
  town.name = request.body.name
  town.morals = request.body.morals
  town.population = request.body.population
  town.systemOfGovernment = request.body.systemOfGovernment
  town.wealth = request.body.wealth

  town.save ( error ) ->
    if error?
      response.send error
    if respond
      response.json town
  town

exports.get = ( request, response ) ->
  Town.find ( error, towns ) ->
    if error?
      response.send error
    response.json towns
