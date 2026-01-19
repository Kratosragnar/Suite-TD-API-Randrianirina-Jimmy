
CREATE TABLE dish (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
dish_type VARCHAR(20) NOT NULL,
selling_price DOUBLE PRECISION
);


CREATE TABLE ingredient (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
price DOUBLE PRECISION NOT NULL,
category VARCHAR(30) NOT NULL
);


CREATE TABLE dish_ingredient (
dish_id INTEGER NOT NULL,
ingredient_id INTEGER NOT NULL,
quantity DOUBLE PRECISION NOT NULL,
unit VARCHAR(10) NOT NULL,
PRIMARY KEY (dish_id, ingredient_id),
FOREIGN KEY (dish_id) REFERENCES dish(id),
FOREIGN KEY (ingredient_id) REFERENCES ingredient(id)
);

INSERT INTO dish_ingredient (dish_id, ingredient_id, quantity, unit) VALUES
(1, 1, 1, 'PIECE'),
(1, 2, 0.25, 'KG'),
(2, 3, 0.5, 'KG'),
(2, 4, 0.15, 'L');

UPDATE dish SET selling_price = 6000 WHERE id = 1;
UPDATE dish SET selling_price = 12000 WHERE id = 2;

