const mongoose = require('mongoose')

const reviewSchema = new mongoose.Schema({
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
    ref: 'review'
  }

})

module.exports = mongoose.model('review', reviewSchema)
