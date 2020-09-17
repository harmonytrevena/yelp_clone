'use strict'

const host = "lallah.db.elephantsql.com";
const database = "dorgnfek";
const user = "dorgnfek";
const password = "qbIQP_hpJifT_GsqjsE7VEFVxb_JkEGo";

// Duplicate from here down in every file
const pgp = require('pg-promise')({
    query: function (event) {
        console.log("QUERY: ", event.query);
    }
});

const options = {
    host: host,
    database: database,
    user: user,
    password: password,
}

const db = pgp(options);

module.exports = db;