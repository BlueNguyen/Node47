--TẠO DATABASE CHO WEB APP FOOD 
# tạo table users, restaurant, food_type
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
