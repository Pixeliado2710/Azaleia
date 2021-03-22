const express = require('express');
const router = express.Router();

router.get('/imagenes', (req, res) => {
    res.redirect('public/imagenes')
});

module.exports = router;