-- left join gives error for me but works for kokchun?
SELECT
    *
FROM
    plants p
    LEFT JOIN plant_care pc ON p.plant_id = pc.plant_id

--left join, works
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    main.plants p
    LEFT JOIN main.plant_care pc ON p.plant_id = pc.plant_id;

-- RIGHT JOIN
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    main.plants p
    RIGHT JOIN main.plant_care pc ON p.plant_id = pc.plant_id;

-- FULL JOIN
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    main.plants p
    FULL JOIN main.plant_care pc ON p.plant_id = pc.plant_id;

-- CROSS JOIN
SELECT
    p.plant_id,
    p.plant_name,
    pc.water_schedule,
    pc.sunlight
FROM
    plants p
    CROSS JOIN plant_care pc;