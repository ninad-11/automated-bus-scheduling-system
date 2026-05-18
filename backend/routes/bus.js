const express = require('express')
const router  = express.Router()
const { getAllBuses, addBus} = require('../controllers/bus.controller')

router.get('/get-buses', getAllBuses);

router.post('/add-bus', addBus)

module.exports = router