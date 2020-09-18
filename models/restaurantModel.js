'use strict'
const db = require('./conn');

class RestaurantList {
    constructor(name, distance, stars, category, favorite_dish, does_takeout, last_eaten) {
        this.name = name;
        this.distance = distance;
        this.stars = stars;
        this.category = category;
        this.favorite_dish = favorite_dish;
        this.does_takeout = does_takeout;
        this.last_eaten = last_eaten;
        this.slug = slug;
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
    static async getOne(slug) {
        try {
            const response = await db.any(`SELECT * restaurants INNER JOIN review ON restaurants.id = review.restaurant_id WHERE slug= $1;`, [slug]);
            console.log(response);
            return response;
        } catch (error) {
            return error.message;
        }
    }
}

module.exports = RestaurantList;