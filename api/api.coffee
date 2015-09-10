# IMPORT
# =============================================================================

# Import libraries
bodyParser = require 'body-parser'
cors = require 'cors'
express = require 'express'
mongoose = require 'mongoose'

# Import controllers
character = require './controllers/character'
town = require './controllers/town'

# Connect to MongoDB
mongoose.connect 'mongodb://localhost/dnd5e'

# Prepare the Express server
app = express()
app.use cors()
app.use bodyParser.urlencoded extended: true
app.use bodyParser.json()

port = process.env.PORT or 8080

# ROUTES
# =============================================================================

# Create router
router = express.Router()

# Create middleware
router.use ( request, response, next ) ->
  console.log ''
  console.log request.method, request.originalUrl
  console.log request.body
  next()

# POST /api/towns
router.route '/towns'
.post town.post
.put town.post
.get town.get

# POST /api/characters
router.route '/characters'
.post character.post
.put character.post
.get character.get

# Register routes
app.use '/api', router

# START THE SERVER
# =============================================================================
app.listen port
console.log 'Listening for requests on port ' + port + '...'
