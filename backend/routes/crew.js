const express = require('express')
const router  = express.Router()
const { getAllCrew, addCrew } = require('../controllers/crew.controller')

router.get('/get-crew-data', getAllCrew)
router.post('/add-crew', addCrew)

module.exports = router