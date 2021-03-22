const express = require('express');
const router = express.Router();
const pool = require('../database');

router.get('/tacones', (req, res) => {
    res.render('catalogo_mujer/tacones');
});

//crud de tacones


//crud de sandalias
router.get('/sandalias', async(req, res) => {
    const sanmx = await pool.query('SELECT * FROM sandalias');
    res.render('catalogo_mujer/sandalias', { sanmx });
});
router.post('/sandalias', async(req, res) => {
    const { nombre_producto, talla, referencia, stack, img } = req.body;
    const samn = { nombre_producto, talla, referencia, stack, img };
    await pool.query('insert into sandalias set ?', [samn]);

    res.redirect('catalogo_mujer/sandalias');
});



router.get('/deportivos', (req, res) => {
    res.render('catalogo_mujer/zapatos_deportivos');
});

module.exports = router;