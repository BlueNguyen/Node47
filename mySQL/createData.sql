--TẠO DATABASE CHO WEB APP FOOD 
-- tạo table users, restaurant, food_type
CREATE TABLE users(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100),
    email VARCHAR(100),
    pass_word VARCHAR(100)
)

INSERT INTO users (full_name, email, pass_word) VALUES
('John Doe', 'john.doe@example.com', 'password123'),
('Jane Smith', 'jane.smith@example.com', 'qwerty2023'),
('Robert Brown', 'robert.brown@example.com', 'securePass456'),
('Emily Davis', 'emily.davis@example.com', 'helloWorld789'),
('Michael Wilson', 'michael.wilson@example.com', 'strongPassword321'),
('Sarah Taylor', 'sarah.taylor@example.com', 'letmein098'),
('David Anderson', 'david.anderson@example.com', 'pass4word007'),
('Linda Johnson', 'linda.johnson@example.com', 'adminPass123'),
('James Thomas', 'james.thomas@example.com', 'testPass567'),
('Patricia Jackson', 'patricia.jackson@example.com', 'mySecret678'),
('Christopher White', 'christopher.white@example.com', 'hiddenPass111'),
('Barbara Harris', 'barbara.harris@example.com', 'trustMe333'),
('Daniel Martin', 'daniel.martin@example.com', 'enter123456'),
('Jessica Moore', 'jessica.moore@example.com', 'accessDenied444'),
('Matthew Thompson', 'matthew.thompson@example.com', 'changeMe555'),
('Elizabeth Garcia', 'elizabeth.garcia@example.com', 'newPassword666'),
('Anthony Martinez', 'anthony.martinez@example.com', 'adminControl777'),
('Nancy Robinson', 'nancy.robinson@example.com', 'unlockMe888'),
('Mark Lewis', 'mark.lewis@example.com', 'loginKey999'),
('Susan Lee', 'susan.lee@example.com', 'myPassword000');

CREATE TABLE restaurant(
    res_id INT PRIMARY KEY AUTO_INCREMENT,
    res_name VARCHAR(100),
    image VARCHAR(255),
    description VARCHAR(255)
)

INSERT INTO restaurant (res_name, image, description) VALUES
('The Gourmet Kitchen', 'http://example.com/images/gourmet_kitchen.jpg', 'A luxury dining experience with world-class chefs.'),
('Pasta Palace', 'http://example.com/images/pasta_palace.jpg', 'The best homemade pasta in the city.'),
('Burger Haven', 'http://example.com/images/burger_haven.jpg', 'Delicious gourmet burgers with a variety of toppings.'),
('Sushi World', 'http://example.com/images/sushi_world.jpg', 'Fresh sushi prepared by master sushi chefs.'),
('Pizza Paradise', 'http://example.com/images/pizza_paradise.jpg', 'Authentic Italian pizzas baked to perfection.'),
('Curry Delight', 'http://example.com/images/curry_delight.jpg', 'Traditional Indian curry dishes with a modern twist.'),
('BBQ Pit', 'http://example.com/images/bbq_pit.jpg', 'Slow-cooked BBQ with all the classic sides.'),
('Vegan Vibes', 'http://example.com/images/vegan_vibes.jpg', 'A 100% plant-based menu for the health-conscious.'),
('Seafood Shack', 'http://example.com/images/seafood_shack.jpg', 'Fresh seafood served with a seaside view.'),
('Taco Town', 'http://example.com/images/taco_town.jpg', 'Mexican street tacos made fresh to order.'),
('Steakhouse Supreme', 'http://example.com/images/steakhouse_supreme.jpg', 'The finest cuts of steak, grilled to your liking.'),
('Dim Sum Delight', 'http://example.com/images/dim_sum_delight.jpg', 'Authentic Chinese dim sum served all day.'),
('Greek Taverna', 'http://example.com/images/greek_taverna.jpg', 'Traditional Greek dishes with a family-friendly atmosphere.'),
('French Bistro', 'http://example.com/images/french_bistro.jpg', 'A taste of Paris with classic French cuisine.'),
('Kebab King', 'http://example.com/images/kebab_king.jpg', 'Middle Eastern kebabs served with fresh pita and sauces.'),
('Burger Boss', 'http://example.com/images/burger_boss.jpg', 'Innovative burgers with unique and bold flavors.'),
('Tandoori Time', 'http://example.com/images/tandoori_time.jpg', 'Authentic Indian tandoori dishes straight from the oven.'),
('Pancake House', 'http://example.com/images/pancake_house.jpg', 'A variety of sweet and savory pancakes for breakfast lovers.'),
('Ramen Corner', 'http://example.com/images/ramen_corner.jpg', 'Traditional Japanese ramen with rich, flavorful broth.'),
('Tapas Terrace', 'http://example.com/images/tapas_terrace.jpg', 'Spanish tapas served with fine wine in a cozy atmosphere.');

CREATE TABLE food_type(
     type_id INT PRIMARY KEY AUTO_INCREMENT,
     type_name VARCHAR(100)
)

INSERT INTO food_type (type_name) VALUES
('Italian'),
('Mexican'),
('Chinese'),
('Indian'),
('Japanese'),
('French'),
('Thai'),
('Greek'),
('Spanish'),
('American'),
('Korean'),
('Vietnamese'),
('Lebanese'),
('Turkish'),
('Moroccan'),
('Ethiopian'),
('Brazilian'),
('Caribbean'),
('Mediterranean'),
('German');

-- Tạo table rate_res, like_res, foods, orders
CREATE TABLE rate_res(
     rate_res_id INT PRIMARY KEY AUTO_INCREMENT,
     
     user_id INT,
     FOREIGN KEY(user_id) REFERENCES users(user_id),
     
     res_id INT,
     FOREIGN KEY(res_id) REFERENCES restaurant(res_id),
     
     amount INT,
     date_rate DATE
     
)

INSERT INTO rate_res (user_id, res_id, amount, date_rate) VALUES
(1, 1, 4, '2023-09-01'),
(2, 1, 5, '2023-09-02'),
(3, 2, 3, '2023-09-03'),
(4, 2, 4, '2023-09-04'),
(5, 3, 5, '2023-09-05'),
(6, 3, 2, '2023-09-06'),
(7, 4, 1, '2023-09-07'),
(8, 4, 3, '2023-09-08'),
(9, 5, 4, '2023-09-09'),
(10, 5, 5, '2023-09-10'),
(11, 6, 3, '2023-09-11'),
(12, 6, 2, '2023-09-12'),
(13, 7, 5, '2023-09-13'),
(14, 7, 1, '2023-09-14'),
(15, 8, 4, '2023-09-15'),
(16, 8, 3, '2023-09-16'),
(17, 9, 2, '2023-09-17'),
(18, 9, 4, '2023-09-18'),
(19, 10, 5, '2023-09-19'),
(20, 10, 1, '2023-09-20');

CREATE TABLE like_res(
     like_res_id INT PRIMARY KEY AUTO_INCREMENT,
     user_id INT,
     FOREIGN KEY(user_id) REFERENCES users(user_id),
     
     res_id INT,
     FOREIGN KEY(res_id) REFERENCES restaurant(res_id),
     
     date_like DATE
)

INSERT INTO like_res (user_id, res_id, date_like) VALUES
(1, 1, '2023-09-01'),
(5, 1, '2023-09-02'),
(7, 2, '2023-09-03'),
(10, 2, '2023-09-04'),
(8, 3, '2023-09-05'),
(6, 3, '2023-09-06'),
(7, 4, '2023-09-07'),
(8, 4, '2023-09-08'),
(9, 5, '2023-09-09'),
(10, 5, '2023-09-10'),
(1, 2, '2023-09-11'),
(3, 3, '2023-09-12'),
(3, 4, '2023-09-13'),
(5, 5, '2023-09-14'),
(5, 1, '2023-09-15'),
(1, 2, '2023-09-16'),
(7, 3, '2023-09-17'),
(8, 5, '2023-09-18'),
(8, 1, '2023-09-19'),
(10, 4, '2023-09-20');

CREATE TABLE foods(
     food_id INT PRIMARY KEY AUTO_INCREMENT,
     food_name VARCHAR(100),
     type_id INT,
     FOREIGN KEY(type_id) REFERENCES food_type(type_id),
     
     price INT,
     image VARCHAR(255),
     description VARCHAR(255)
)     

INSERT INTO foods (food_name, type_id, price, image, description) VALUES
('Margherita Pizza', 1, 12, 'http://example.com/images/margherita_pizza.jpg', 'Classic pizza with tomato, mozzarella, and basil.'),
('Cheeseburger', 2, 10, 'http://example.com/images/cheeseburger.jpg', 'Juicy cheeseburger with cheddar, lettuce, and tomato.'),
('Sushi Platter', 3, 18, 'http://example.com/images/sushi_platter.jpg', 'Assorted sushi with fresh fish and rice.'),
('Caesar Salad', 4, 8, 'http://example.com/images/caesar_salad.jpg', 'Romaine lettuce with Caesar dressing and croutons.'),
('Chicken Alfredo Pasta', 1, 15, 'http://example.com/images/chicken_alfredo_pasta.jpg', 'Pasta with creamy Alfredo sauce and grilled chicken.'),
('Chocolate Cake', 5, 7, 'http://example.com/images/chocolate_cake.jpg', 'Rich and moist chocolate cake with frosting.'),
('Grilled Salmon', 6, 20, 'http://example.com/images/grilled_salmon.jpg', 'Fresh salmon fillet grilled to perfection.'),
('Vegetable Stir Fry', 4, 9, 'http://example.com/images/vegetable_stir_fry.jpg', 'Stir-fried vegetables in a soy-based sauce.'),
('Pepperoni Pizza', 1, 14, 'http://example.com/images/pepperoni_pizza.jpg', 'Pizza topped with spicy pepperoni slices.'),
('Ice Cream Sundae', 5, 6, 'http://example.com/images/ice_cream_sundae.jpg', 'Ice cream with chocolate syrup, nuts, and a cherry on top.'),
('Taco Platter', 2, 11, 'http://example.com/images/taco_platter.jpg', 'Assorted tacos with beef, chicken, and vegetarian options.'),
('Lobster Roll', 6, 22, 'http://example.com/images/lobster_roll.jpg', 'Fresh lobster served in a buttery roll.'),
('Vegetarian Burger', 2, 9, 'http://example.com/images/vegetarian_burger.jpg', 'Plant-based burger with avocado and sprouts.'),
('Mushroom Risotto', 4, 16, 'http://example.com/images/mushroom_risotto.jpg', 'Creamy risotto with mushrooms and parmesan.'),
('BBQ Ribs', 2, 19, 'http://example.com/images/bbq_ribs.jpg', 'Tender BBQ ribs served with coleslaw and fries.'),
('Tiramisu', 5, 8, 'http://example.com/images/tiramisu.jpg', 'Classic Italian dessert with mascarpone and espresso.'),
('Spaghetti Carbonara', 1, 13, 'http://example.com/images/spaghetti_carbonara.jpg', 'Pasta with bacon, egg, and parmesan.'),
('Falafel Wrap', 4, 10, 'http://example.com/images/falafel_wrap.jpg', 'Falafel in a wrap with hummus and veggies.'),
('Peking Duck', 6, 25, 'http://example.com/images/peking_duck.jpg', 'Crispy duck with hoisin sauce and pancakes.'),
('Brownie Sundae', 5, 7, 'http://example.com/images/brownie_sundae.jpg', 'Warm brownie with ice cream and chocolate sauce.');

CREATE TABLE orders(
     orders_id INT PRIMARY KEY AUTO_INCREMENT,
     food_id INT,
     FOREIGN KEY(food_id) REFERENCES foods(food_id),
     
     user_id INT,
     FOREIGN KEY(user_id) REFERENCES users(user_id),
     
     amount INT,
     arr_sub_id VARCHAR(255)
)

INSERT INTO orders (food_id, user_id, amount, arr_sub_id) VALUES
(1, 1, 2, 'SUB123'),
(2, 1, 1, 'SUB124'),
(3, 2, 3, 'SUB125'),
(4, 2, 1, 'SUB126'),
(5, 3, 2, 'SUB127'),
(6, 3, 1, 'SUB128'),
(7, 4, 2, 'SUB129'),
(8, 4, 1, 'SUB130'),
(9, 5, 3, 'SUB131'),
(10, 5, 1, 'SUB132'),
(1, 6, 2, 'SUB133'),
(2, 6, 1, 'SUB134'),
(3, 7, 3, 'SUB135'),
(4, 7, 2, 'SUB136'),
(5, 8, 1, 'SUB137'),
(6, 8, 2, 'SUB138'),
(7, 9, 1, 'SUB139'),
(8, 9, 3, 'SUB140'),
(9, 10, 2, 'SUB141'),
(10, 10, 1, 'SUB142');
