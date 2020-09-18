const db = require('../models/conn');

const express = require('express'),
    router = express.Router(),
    restaurantList = require('../models/restaurantModel')

router.get('/:name?', async (req, res) =>{
    if(req.params.name === undefined){
        res.redirect('/')
    } else {
    const restaurantDetails = await restaurantList.getOne(req.params.name)
    console.log(restaurantDetails)
    
    res.render("template", {
        locals: {
            title: "Restaurant Details",
            data: restaurantDetails
        },
        partials: {
            partial: "partial-details"
        }
    });
    }
});


module.exports = router;