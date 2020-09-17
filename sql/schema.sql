/* This is my SCHEMA file */
/* It contains the data structure for my tables */

CREATE TABLE restaurants (
    id serial primary key, 
    name text, 
    distance integer, 
    stars integer,
    category text,
    favorite_dish text,
    does_takeout boolean,
    last_eaten text
);

CREATE TABLE reviewer (
    id serial primary key, 
    name text, 
    email varchar,
    karma integer
);

CREATE TABLE review (
    id serial primary key, 
    title text,
    review text,
    stars integer, 
    reviewer_id integer,
    restaurant_id integer,
    FOREIGN KEY (reviewer_id) REFERENCES reviewer (id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants (id)
);