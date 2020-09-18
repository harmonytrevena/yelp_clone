'use strict'

const express = require('express');
const router = express.Router();

const addReview = require('../models/restaurantModel') 

router.get('/', (req, res) => {
    res.render("template", {
        locals: {
            title: "Home Page"
        },
        partials: {
            partial: "partial-index"
        }
    });
});

router.post("/", async (req, res) => {
    console.log(req.body);
    await addReview.addReview(req.body);
    res.redirect('back');
});

module.exports = router;