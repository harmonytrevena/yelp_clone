SELECT * FROM review WHERE restaurant_id = 1;

SELECT * FROM review INNER JOIN restaurants on review.restaurant_id = restaurants.id WHERE restaurants.name = 'Red Ginger';

SELECT * FROM review INNER JOIN reviewer on review.reviewer_id = reviewer.id WHERE reviewer.name = 'Harmony Trevena';

SELECT name, review FROM review INNER JOIN restaurants on review.restaurant_id = restaurants.id WHERE restaurants.name = 'Red Ginger';

SELECT name, AVG(stars) FROM restaurants GROUP BY restaurants.name;

SELECT name, COUNT(review) FROM restaurants INNER JOIN review on review.restaurant_id = restaurants.id GROUP BY restaurants.name;

SELECT restaurants.name, review, reviewer.name FROM review INNER JOIN restaurants on review.restaurant_id = restaurants.id INNER JOIN reviewer on review.reviewer_id = reviewer.id;

SELECT reviewer.name, AVG(stars) FROM review INNER JOIN reviewer on review.reviewer_id = reviewer.id GROUP BY reviewer.name;

SELECT reviewer.name, MIN(stars) FROM review INNER JOIN reviewer on review.reviewer_id = reviewer.id GROUP BY reviewer.name;

SELECT category, COUNT(restaurants.name) FROM restaurants GROUP BY category;

SELECT restaurants.name, COUNT(restaurants.stars) FROM restaurants, review WHERE review.restaurant_id = restaurants.id AND review.stars = 5 GROUP BY restaurants.name;

SELECT category, AVG(stars) FROM restaurants GROUP BY category;