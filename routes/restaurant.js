'use strict'

const express = require('express'),
    router = express.Router();
const restaurantModel = require('../models/restaurantModel');

const renderPage = async res => {
    const restaurantData = await restaurantModel.getAll();
    const specificData = await restaurantModel.getOne();

    res.render("template", {
        locals: {
            title: "Restaurant",
            data: restaurantData,
            specificData: specificData
        },
        partials: {
            partial: "partial-restaurant"
        }
    });
}

router.get("/", async (req, res) => {
    renderPage(res);
});

module.exports = router;