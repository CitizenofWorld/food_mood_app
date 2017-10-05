CREATE DATABASE foodmoods;







CREATE TABLE moods (
	id SERIAL4 PRIMARY KEY,
	colors VARCHAR(400),
	mood_name VARCHAR(200)
);

CREATE TABLE recipes (
	id SERIAL4 PRIMARY KEY,
	image_url VARCHAR(400),
	recipe_url VARCHAR(200),
	mood_id INTEGER,
	FOREIGN KEY (mood_id) REFERENCES moods (id)
);

CREATE TABLE likes (
	id SERIAL4 PRIMARY KEY,
	email VARCHAR(200),
	user_id INTEGER,
	recipe_id INTEGER,
	FOREIGN KEY (user_id) REFERENCES users (id),
	FOREIGN KEY (recipe_id) REFERENCES recipes (id)
);

CREATE TABLE users (
id SERIAL4 PRIMARY KEY,
name VARCHAR(200),
email VARCHAR(200)
);



INSERT INTO moods (colors, mood_name) VALUES ('yellow','happy');

INSERT INTO recipes (name, image_url, recipe_url, mood_id) VALUES ('Clams','http://rasamalaysia.com/wp-content/uploads/2016/06/sauteed-clams.jpg','http://allrecipes.com.au/recipe/1252/clams-steamed-in-wine.aspx', 1);
INSERT INTO recipes (name, image_url, recipe_url, mood_id) VALUES ('Shitake Mushrooms','http://img.taste.com.au/nIa2tese/w643-h428-cfill-q90/taste/2016/11/asian-greens-and-shiitake-mushrooms-62183-1.jpeg','http://www.taste.com.au/recipes/asian-greens-shiitake-mushrooms/c41e3e66-9b5a-4e84-912e-fa4d025c27b9', 1);
INSERT INTO recipes (name, image_url, recipe_url, mood_id) VALUES ('Oysters','http://img.taste.com.au/79i0mgq4/w643-h428-cfill-q90/taste/2016/11/champagne-oysters-92421-1.jpeg','http://www.taste.com.au/recipes/champagne-oysters/d612e465-9b82-4b23-9f99-25f31fffa267', 2);
INSERT INTO recipes (name, image_url, recipe_url, mood_id) VALUES ('Chocolate Mousse','https://cdn.jamieoliver.com/recipe-database/430_575/55846352.jpg','https://www.jamieoliver.com/recipes/chocolate-recipes/cherry-chocolate-mousse/', 2);
INSERT INTO recipes (name, image_url, recipe_url, mood_id) VALUES ('Scallops','http://aucdn.ar-cdn.com/recipes/port250/7b2b5e5c-d7c4-4da8-8e94-6efe594e4c28.jpg','http://allrecipes.com.au/recipe/10635/garlic-lemon-scallops.aspx', 3);
INSERT INTO recipes (name, image_url, recipe_url, mood_id) VALUES ('Coconut','http://aucdn.ar-cdn.com/recipes/port250/90d360f0-f54f-47f4-9739-f83a644c9817.jpg','http://allrecipes.com.au/recipe/4917/tofu-and-vegetable-coconut-curry.aspx', 3);
INSERT INTO recipes (name, image_url, recipe_url, mood_id) VALUES ('Chamomile','https://assets.epicurious.com/photos/54b173901cc76a014cfafc09/6:4/w_620%2Ch_413/395452_strawberries-chamomile-cream_1x1.jpg','https://www.epicurious.com/recipes/food/views/strawberries-with-chamomile-cream-395452', 4);
INSERT INTO recipes (name, image_url, recipe_url, mood_id) VALUES ('Spinach','https://cdn.jamieoliver.com/recipe-database/430_575/2ipm2HQHql2Azq2dLfiA4k.jpg','https://www.jamieoliver.com/recipes/pasta-recipes/spinach-lasagne/', 4);
INSERT INTO recipes (name, image_url, recipe_url, mood_id) VALUES ('Coffee Truffles','http://img.taste.com.au/UAgIAVS0/w643-h428-cfill-q90/taste/2016/11/coffee-truffles-32254-1.jpeg','http://www.taste.com.au/recipes/coffee-truffles/23c7c984-6dd3-47f7-8788-a0651e3ba0a9', 5);
INSERT INTO recipes (name, image_url, recipe_url, mood_id) VALUES ('Trout','http://img.taste.com.au/5IYlkO3o/w643-h428-cfill-q90/taste/2016/11/spice-crusted-ocean-trout-with-zucchini-salad-5425-1.jpeg','http://www.taste.com.au/recipes/spice-crusted-ocean-trout-zucchini-salad/0e9b950e-4b0b-408b-919d-d858d8ae4135', 5);
INSERT INTO recipes (name, image_url, recipe_url, mood_id) VALUES ('Carrots','http://img.taste.com.au/33_dXdTf/w643-h428-cfill-q90/taste/2016/11/honey-glazed-baby-carrots-with-mint-97830-1.jpeg','http://www.taste.com.au/recipes/honey-glazed-baby-carrots-mint/3963f034-5959-474c-aadf-6139cab63c3b?r=recipes/carrotrecipes&c=a5b04929-57bd-491f-a306-f326953d4d38/Carrot%20recipes', 6);
INSERT INTO recipes (name, image_url, recipe_url, mood_id) VALUES ('Cherry Almond','http://img.taste.com.au/UWb90Ti1/w643-h428-cfill-q90/taste/2016/11/cherry-almond-tart-60025-1.jpeg','http://www.taste.com.au/recipes/cherry-almond-tart/683e554a-2e0f-4110-9660-7650ba94d533', 6);


