'use strict'
const db = require('./conn');

class RestuarantList {
    constructor(name, distance, stars, category, favorite_dish, does_takeout, last_eaten) {
        this.name = name;
        this.distance = distance;
        this.stars = stars;
        this.category = category;
        this.favorite_dish = favorite_dish;
        this.does_takeout = does_takeout;
        this.last_eaten = last_eaten;
    }
    static async getAll() {
        try {
            const response = await db.any(`SELECT * FROM restaurants;`);
            console.log(response);
            return response;
        } catch (error) {
            return error.message;
        }
    }
}

module.exports = RestuarantList;