const mongoose = require('mongoose')

const foodTruckSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true,
    unique: true
  },
  currentLocation: {
    type: String,
    required: true
  },
  cuisine: {
    type: String,
    required: true
  },
  user: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User'
  }

})

module.exports = mongoose.model('User', foodTruckSchema)
