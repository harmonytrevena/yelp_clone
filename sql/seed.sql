/* This is my SEED file */
/* It contains the data */

INSERT INTO restaurants (name, distance, stars, category, favorite_dish, does_takeout, last_eaten)
    VALUES ('Lucianos Ristorante Italiano', 1976, 4.4, 'Italian', 'Steak and Lobster', 'true', 'June 10 2020'), ('Po Noodle House', 1, 4.9, 'Vietnamese', 'Vermicelli Bun Shrimp', 'true', 'September 1 2020'), ('Red Ginger', 2, 4.0, 'Asian', 'Mongolian Beef', 'true', 'September 8 2020');

INSERT INTO restaurants (name, distance, stars, category, favorite_dish, does_takeout, last_eaten)
    VALUES ('Pasta Italiano', 5, 3, 'Italian', 'Spaghetti Alla Carbonara', 'false', 'June 10 2020'), ('Noodle Camp', 10, 2, 'Vietnamese', 'Pad Thai', 'true', 'September 9 2020'), ('Burger Joint', 5, 5, 'American', 'Bun-less Beef Burger', 'true', 'September 3 2020');

INSERT INTO reviewer (name, email, karma)
    VALUES ('Harmony Trevena', 'harmony@demoemail.com', 7), ('Sean Reid', 'sean@demoemail.com', 6);

INSERT INTO reviewer (name, email, karma)
    VALUES ('Jai Gokale', 'jai@demoemail.com', 5), ('Jane Doe', 'jane@demoemail.com', 5);

INSERT INTO review (title, review, stars, reviewer_id, restaurant_id)
    VALUES ('Great meal', 'This restaurant is great', 5, 1, 1);

INSERT INTO review (title, review, stars, reviewer_id, restaurant_id)
    VALUES ('Yum', 'The food here is awesome', 5, 2, 3);

INSERT INTO review (title, review, stars, reviewer_id, restaurant_id)
    VALUES ('Best burger', 'The vibe here is great, service and food too' , 5, 3, 6);

INSERT INTO review (title, review, stars, reviewer_id, restaurant_id)
    VALUES ('Tasty', 'The food and service were great', 4, 1, 2);

INSERT INTO review (title, review, stars, reviewer_id, restaurant_id)
    VALUES ('Not my favorite', 'Not a place I would visit often, average food', 3, 2, 1);

INSERT INTO review (title, review, stars, reviewer_id, restaurant_id)
    VALUES ('Best fries and beer', 'Wow, just wow' , 5, 2, 6);