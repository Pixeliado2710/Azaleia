const express = require('express');
const router = express.Router();
const pool = require('../database');

router.get('/formulario', async(req, res) => {
    const regis = await pool.query('SELECT * FROM formulario');
    res.render('contactenos/formulario', { regis });
});
router.post('/formulario', async(req, res) => {
    const { nombre, correo, telefono, mensaje } = req.body;
    const reg = { nombre, correo, telefono, mensaje };
    await pool.query('insert into formulario set ?', [reg]);

    res.redirect('/contactenos/formulario');
});

router.get('/formulario/:id_formulario', async(req, res) => {
    const { id_formulario } = req.params;
    const regis = await pool.query('delete from formulario where id_formulario=?', [id_formulario]);
    res.redirect('/contactenos/formulario');
});

router.get('/editar-formulario/:id_formulario', async(req, res) => {
    const { id_formulario } = req.params;
    const regis = await pool.query('SELECT * FROM formulario =?', [id_formulario]);
    res.render('contactenos/formulario', { regis });
});

router.post('/editar-formulario/:id_formulario', async(req, res) => {
    const { id_formulario } = req.params;
    const { nombre, correo, telefono, mensaje } = req.body;
    const modififormu = { nombre, correo, telefono, mensaje };
    await pool.query('update formulario set ? where id_formulario =?', [modififormu, id_formulario]);

    res.redirect('/contactenos/formulario');
});



module.exports = router;