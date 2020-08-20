const functions = require('firebase-functions')
const app = require('express')()

const {signup, login } = require('./handlers/users')

//users routes
app.post('/signup', signup)
app.post('/login' , login)

exports.api = functions.https.onRequest(app)
