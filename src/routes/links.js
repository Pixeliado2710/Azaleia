const express = require('express');
const router = express.Router();

router.get('/add', (req, res) => {
    res.render('links/add');
});

module.exports = router;