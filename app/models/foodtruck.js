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
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'FoodTruck'
  }

})

module.exports = mongoose.model('FoodTruck', foodTruckSchema)
