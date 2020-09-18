'use strict'
const db = require('./conn');

class RestaurantList {
    constructor(name, distance, stars, category, favorite_dish, does_takeout, last_eaten, slug) {
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
            const response = await db.one(`SELECT * FROM restaurants WHERE slug = $1;`, [slug]);
            console.log(response);
            return response;
        } catch (error) {
            return error.message;
        }
    }
    static async addReview(data) {
        try {
            await db.any(`INSERT INTO review (title, review, stars, reviewer_id, restaurant_id) VALUES $1, $2, $3, $4, $5;`, [data.title, data.review, data.stars, data.reviewer_id, data.restaurant_id]);
        } catch (error) {
            return error.message;
        }
    }
}

module.exports = RestaurantList;