
CREATE TABLE users_niket(
   UserId int Primary Key,
   UserName Varchar(20),
   Password Varchar(20)
);

INSERT INTO users_niket
values 
(1, 'niket', 'Welcome123'),
(2, 'newUser', 'Welcome123');

select * from users_niket;


Create Table products_niket(
	productId int Primary Key,
	productName Varchar(50),
	productCategory Varchar(100),
	productPrice int,
	productDescription  Varchar(250),
	productUrl Varchar(250)
);


INSERT INTO products_niket (productId, productName, productCategory, productPrice, productDescription, productUrl)
VALUES 
-- Electronics Category
(1, 'Samsung Galaxy S23 Ultra', 'Electronics', 1199, 'The Samsung Galaxy S23 Ultra is a cutting-edge smartphone with a 108 MP camera, 5000mAh battery, and 512GB of storage. Perfect for capturing memories, streaming, and multitasking at lightning speed.', 'https://m.media-amazon.com/images/I/71lD7eGdW-L._AC_UY218_.jpg'),
(2, 'Apple iPhone 15 Pro Max', 'Electronics', 1299, 'Apple’s iPhone 15 Pro Max offers unparalleled performance with the A16 Bionic chip, a 48MP Pro camera system, and a stunning 6.7-inch Super Retina display.','https://m.media-amazon.com/images/I/81Os1SDWpcL._AC_UY218_.jpg'),
(3,'Sony WH-1000XM5 Wireless Headphones', 'Electronics', 349, 'Experience exceptional noise-cancellation with the Sony WH-1000XM5, featuring up to 30 hours of battery life and superior sound quality for an immersive listening experience.', 'https://m.media-amazon.com/images/I/51aXvjzcukL._AC_UY218_.jpg'),
(4,'Dell XPS 15 Laptop', 'Electronics', 1599, 'The Dell XPS 15 is a powerhouse laptop with an Intel Core i7 processor, 16GB RAM, and a stunning 4K display. Ideal for creators, developers, and power users alike.', 'https://m.media-amazon.com/images/I/81T5jRKDkvL._AC_UL320_.jpg'),
(5, 'Samsung 65-Inch QLED 8K TV', 'Electronics', 2999, 'Samsung’s 65-inch QLED 8K TV brings unmatched clarity, color, and contrast, powered by the latest Quantum Processor 8K and AI upscaling technology.', 'https://m.media-amazon.com/images/I/81ZGvn9PzPL._AC_UY218_.jpg'),

-- Fashion Category
(6,'Nike Air Max 270', 'Fashion', 150, 'The Nike Air Max 270 offers superior comfort and style with its large Air Max unit in the heel, breathable mesh upper, and lightweight cushioning for all-day wear.', 'https://m.media-amazon.com/images/I/51UcgCzuwPL._AC_UL320_.jpg'),
(7,'Adidas Ultraboost 22', 'Fashion', 180, 'The Adidas Ultraboost 22 is built for performance with Boost cushioning technology and a Primeknit upper, offering unparalleled energy return with every step.', 'https://m.media-amazon.com/images/I/71qGs2JfKjL._AC_UL320_.jpg'),
(8,'Levi’s 511 Slim Fit Jeans', 'Fashion', 89, 'Levi’s 511 Slim Fit Jeans offer a modern, slim cut with stretch for added comfort, making them perfect for daily wear. Available in a wide range of washes.', 'https://m.media-amazon.com/images/I/51cFvK7782L._AC_UL320_.jpg'),
(9,'The North Face Nuptse Jacket', 'Fashion', 279, 'Stay warm and stylish in The North Face Nuptse Jacket, featuring 700-fill down insulation and a durable water-repellent finish, ideal for cold-weather adventures.', 'https://m.media-amazon.com/images/I/51xiKFshdZL._AC_UL320_.jpg'),
(10,'Ray-Ban Aviator Sunglasses', 'Fashion', 179, 'The Ray-Ban Aviator Sunglasses are an iconic style that offers timeless design with UV protection and polarized lenses for a crystal-clear view.', 'https://m.media-amazon.com/images/I/41c9btM-x+L._AC_UL320_.jpg'),

-- Home Appliances Category
(11,'Dyson V11 Cordless Vacuum Cleaner', 'Home Appliances', 599, 'The Dyson V11 Cordless Vacuum provides powerful suction, intelligent cleaning modes, and up to 60 minutes of runtime for a spotless home.', 'https://m.media-amazon.com/images/I/6163IE8fR-L._AC_UY218_.jpg'),
(12,'KitchenAid Artisan Stand Mixer', 'Home Appliances', 429, 'The KitchenAid Artisan Stand Mixer is a versatile kitchen tool with a powerful motor, multiple attachments, and a timeless design, making baking and cooking a breeze.','https://m.media-amazon.com/images/I/61oHdFNlkVL._AC_UY218_.jpg'),
(13,'Instant Pot Duo 7-in-1 Electric Pressure Cooker', 'Home Appliances', 99, 'The Instant Pot Duo 7-in-1 offers versatile cooking options, from pressure cooking to slow cooking and sautéing, making meal preparation faster and easier.', 'https://m.media-amazon.com/images/I/71o6YeJs+wL._AC_UL320_.jpg'),
(14,'LG 24-Inch Smart Washer', 'Home Appliances', 899, 'The LG Smart Washer provides advanced laundry care with AI technology, TurboWash 360°, and steam technology to remove allergens and deep-clean fabrics.','https://m.media-amazon.com/images/I/71UylC5-6kL._AC_UY218_.jpg'),

-- Beauty & Personal Care Category
(15,'Dyson Airwrap Complete', 'Beauty & Personal Care', 549, 'The Dyson Airwrap Complete uses air to style hair, creating voluminous curls, smooth waves, and sleek styles without extreme heat, protecting your hair’s natural shine.', 'https://m.media-amazon.com/images/I/51FaKZTolgL._AC_UL320_.jpg'),
(16,'Philips Sonicare DiamondClean Electric Toothbrush', 'Beauty & Personal Care', 199, 'Philips Sonicare DiamondClean offers superior plaque removal with advanced sonic technology and multiple brushing modes for a complete oral care routine.', 'https://m.media-amazon.com/images/I/61GbiXFz0bL._AC_UL320_.jpg'),
(17, 'Revlon One-Step Hair Dryer and Volumizer', 'Beauty & Personal Care', 59, 'The Revlon One-Step Hair Dryer and Volumizer combines drying and styling in one step, delivering smooth, voluminous hair with less frizz in less time.', 'https://m.media-amazon.com/images/I/61mrOPfyq3L._AC_UL320_.jpg'),

-- Sports & Outdoors Category
(18, 'YETI Tundra 45 Cooler', 'Sports', 299, 'The YETI Tundra 45 Cooler is built tough for outdoor adventures, keeping your food and drinks cold for days with its extra-thick insulation and durable design.', 'https://m.media-amazon.com/images/I/71Af6fY9yiL._AC_UY218_.jpg'),
(19, 'Patagonia Black Hole Duffel Bag 55L', 'Sports', 139, 'The Patagonia Black Hole Duffel Bag is weather-resistant, durable, and versatile, making it the perfect companion for travel and outdoor excursions.', 'https://m.media-amazon.com/images/S/al-eu-726f4d26-7fdb/26cf16cc-ab6c-406a-8582-b9be7d555ede._CR65,0,1200,628_SX430_QL70_.jpg'),
(20, 'Garmin Fenix 6 Pro GPS Smartwatch', 'Sports', 649, 'The Garmin Fenix 6 Pro GPS Smartwatch offers top-of-the-line performance tracking, navigation features, and a rugged design, perfect for athletes and adventurers.', 'https://m.media-amazon.com/images/I/71GtgMbKvKL._AC_UY218_.jpg');


 SELECT * FROM Products_niket; 