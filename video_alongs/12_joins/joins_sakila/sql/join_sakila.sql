-- which actor has played which film_id?
SELECT
    a.actor_id,
    a.first_name,
    a.last_name,
    fa.film_id
FROM
    actor a
    LEFT JOIN film_actor fa ON fa.actor_id = a.actor_id;

-- which actor has played which films?
-- join 3 tables
SELECT
    a.first_name,
    a.last_name,
    f.title
FROM
    actor a
    LEFT JOIN film_actor fa ON fa.actor_id = a.actor_id
    LEFT JOIN film f ON f.film_id = fa.film_id;

-- get all films with associated category
SELECT
    f.title,
    c.name AS category
FROM
    film_category fc
    INNER JOIN category c ON fc.category_id = c.category_id
    INNER JOIN film f ON f.film_id = fc.film_id;