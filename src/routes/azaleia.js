    const express = require('express');
    const router = express.Router();
    const pool = require('../database');


    router.get('/inicio', (req, res) => {
        res.render('inicio/login', { titulo: 'azaleia' });
    });
    router.get('/azaleia', (req, res) => {
        res.render('inicio/principal');
    });

    module.exports = router;