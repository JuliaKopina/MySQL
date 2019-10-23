/*Используя сервис http://filldb.info или другой по вашему желанию, сгенерировать тестовые данные для всех таблиц, учитывая логику связей.
Для всех таблиц, где это имеет смысл, создать не менее 100 строк. Создать локально БД vk и загрузить в неё тестовые данные.*/

DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
    firstname VARCHAR(100),
    lastname VARCHAR(100),
    email VARCHAR(120) UNIQUE,
    password_hash VARCHAR(100),
    phone BIGINT, 
    INDEX (phone),
    INDEX (firstname, lastname)
);

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('1', 'Demond', 'Macejkovic', 'wkreiger@example.net', '0616590f28cd747a63d3ab72ea78bb8a78c748c8', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('2', 'Elisabeth', 'Harber', 'joshua.senger@example.com', '8a5f8a1089b575cb61d4c80dff38f09f5c5d07b0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('3', 'Avery', 'Abbott', 'osvaldo.stiedemann@example.org', 'a8a902abeaca81484e1e36b9b2f2ab5fde28c5eb', '909');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('4', 'Joanny', 'Stoltenberg', 'itreutel@example.net', '8b1e45b67db182010ccc03f896f27afdae970072', '723');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('5', 'Keshaun', 'Brekke', 'prunolfsson@example.net', 'b3564b32d2609fc5ae124f88defa78d3355a60b5', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('6', 'Bernardo', 'Harber', 'orland28@example.org', 'cd8c33866066f5b247e9ef56c0620f82504f7531', '66');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('7', 'Delores', 'Kunde', 'connelly.fay@example.org', 'cfbac88155bfb11c32e20558fa85e2e82322657f', '184');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('8', 'Jadyn', 'Thiel', 'o\'conner.jamel@example.net', '228a8cd719498df1c267b02b540fa8a79a144936', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('9', 'Chandler', 'Johnson', 'emelie.altenwerth@example.net', 'a5b3e4c018892c488a2ab3a7b726d724caf590fd', '53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('10', 'Summer', 'Bartoletti', 'kunde.rex@example.net', 'e78bbdc38682778d58c27752e8e4ba0032dc44d0', '451');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('11', 'Camille', 'Wyman', 'xander75@example.org', 'a47ab94b6d00f889805f0220a17dde264ad1961b', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('12', 'Helga', 'Deckow', 'linda69@example.org', '5d07d004403d2ed0d19d7a967223837b358bf284', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('13', 'Lenora', 'Schimmel', 'ogerhold@example.net', 'aa7b3a609e41774aab55ce6a69f36f400f594ecd', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('14', 'Michael', 'Farrell', 'trycia.considine@example.net', 'cef4b00aa3c8fa87ee50d64922c7e3e09f0e68a8', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('15', 'Bailee', 'Lubowitz', 'kreiger.jaydon@example.org', '18c536437a54791757d892f085751464db7e09b5', '34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('16', 'Genoveva', 'Haag', 'twaelchi@example.net', '9e05511551b92d633deb2aa75f7507e3bf7cca8f', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('17', 'Melba', 'Monahan', 'jeffery.hilpert@example.com', '7208da428a51f6dc0fcb4f1039ca71d22636f26b', '1034077250');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('18', 'Bethel', 'Deckow', 'amurray@example.org', '3d53148cfefaa1b47dab70ad5d9f99a1904c25b2', '99');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('19', 'Olga', 'Maggio', 'josh.schumm@example.net', 'fefe4aab96a788f9376859a2072daf1e2c565b3c', '4864392514');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('20', 'Mariam', 'Pfannerstill', 'lamont.steuber@example.net', 'a1b708d332cf8a60f43e90f83eb95b59b3255940', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('21', 'Pearl', 'Padberg', 'kamryn.aufderhar@example.net', 'a533d4953b944a238415b03fa988c45c61d6ee40', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('22', 'Janis', 'Jast', 'ogoodwin@example.org', '3f891803e9046d3ad1d1934ad8d9aadadfdcceba', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('23', 'Martine', 'Conroy', 'dkemmer@example.com', '6497e8420ae33d537235f59715c102906e39da9f', '488');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('24', 'Laurianne', 'Johns', 'kuphal.monica@example.org', 'e9050b7e95a2cf1f6ac18ae3eff980f17b402411', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('25', 'Vincenzo', 'Jenkins', 'ivonrueden@example.net', 'f75b5bac71d5b75d7022e634851b5617f768fc62', '91');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('26', 'Arianna', 'Christiansen', 'rossie.lind@example.org', '3172545f98920fa99dc7eaac69f4b8b2aef6e012', '32');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('27', 'Harrison', 'Greenfelder', 'veum.penelope@example.net', 'f3dea209e22d91923ed7d860e1b942bf32d0b787', '912995');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('28', 'Guillermo', 'Terry', 'rosemarie.treutel@example.com', '333039692ec1b346e5e99f6696630c727e0821a6', '347419');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('29', 'Marvin', 'Hauck', 'crolfson@example.net', 'f08746ea5f39721f164b34e4d30a2db727bba4ec', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('30', 'Terrance', 'Ondricka', 'spinka.cynthia@example.com', '5f7044ed7307c25abaa81ed650ac5efbd92cf6f7', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('31', 'Reed', 'Donnelly', 'okuneva.stan@example.net', '3d748c35bb209bb7f6ac3008bfa4a814d06ea23c', '82');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('32', 'Alvera', 'O\'Kon', 'dmcclure@example.net', '2d6cc41a5de1942ee30bcffb1b52788054db4716', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('33', 'Clinton', 'Ratke', 'tania.huels@example.com', '2b722b199a3c58e4a9abecc98855ef95a0c99ba9', '98');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('34', 'Jettie', 'Schuster', 'lowe.kaylie@example.com', '8a00bc2423dac635fa3747476ef0c0d5f864727b', '9341899960');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('35', 'Lorena', 'Gulgowski', 'dbraun@example.org', 'a8902d4b3d99d063eac91f7e9a7107cf1273cd61', '348418');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('36', 'Rolando', 'Powlowski', 'orion.tillman@example.net', '2d62df0092187275214d5fe11d89efaa7cc897b6', '893318');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('37', 'Scotty', 'Williamson', 'guadalupe.quitzon@example.com', '8c546e40421ce4f02ea3a9e2dc850345ef4813f6', '781');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('38', 'Houston', 'Mills', 'vbergstrom@example.com', '0426f5a0df1fe162fc2a322d29b928fe86c1616a', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('39', 'Brandt', 'Gleichner', 'jpredovic@example.org', 'ec5ff4804394a831f69b85e192f89c1bfcdd2a58', '928');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('40', 'Kaleigh', 'Harber', 'cferry@example.net', '16a9c3bb7c3f0f1f60c7cbadc6bc9ec7815fdf61', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('41', 'Gillian', 'Bechtelar', 'filiberto59@example.org', 'f65872dd042e687fccad79157d610378dbe68f0f', '731204');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('42', 'Stephan', 'Thiel', 'gkunde@example.org', '535cd2549856a4ca6823d3fb06493ab5b530edcf', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('43', 'Earl', 'Wunsch', 'shanel.bartell@example.org', 'b43d683b71b9ee00a816c2ae9bf925f7d987ede0', '271');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('44', 'Madelynn', 'Larkin', 'maegan.tremblay@example.org', '82d5911178a2a20eb6b3dc790d9a006b3fecb521', '17164');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('45', 'Alisha', 'Nader', 'mckenzie.golda@example.com', '4c31c82173260a09a3d4f41b1f66ec6a76c2c32b', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('46', 'Deonte', 'Ziemann', 'ola.rippin@example.com', '040926d7edf4c1bcbc7dc9384fe64fd218a00aab', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('47', 'Lavinia', 'Botsford', 'jcartwright@example.com', 'cd1804639a4b123d30df3dfdbbca5af1466aac5b', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('48', 'Aron', 'Schaefer', 'darwin.gislason@example.com', '57657d70aa9eeb327a0ec7e48556ddd03ba65ec0', '944130');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('49', 'Bria', 'Wunsch', 'diamond57@example.com', '14b762ca60cb1da2cf141f27952e16b68954bb37', '505');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('50', 'Timmothy', 'Lindgren', 'jones.gloria@example.net', '5c76ddd1d911f4853bd04433b8ca0ff7e878ff3b', '71');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('51', 'Catalina', 'Greenholt', 'qoberbrunner@example.com', '5688c24e508ecc1c3fa4a4aa76e836a6b2631fb0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('52', 'Stephen', 'Pacocha', 'oondricka@example.net', '924e9be0c65a84bb13ed7af8d011b6d1f4e0cf0c', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('53', 'Al', 'Hamill', 'wiegand.daniela@example.net', '5598a080fae9f4ed1612740df4fd2aad95726f89', '914187');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('54', 'Isom', 'Johnston', 'deja.o\'connell@example.com', '006d23b90174131f2fcad817fc04346e21a49d83', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('55', 'Brooke', 'Carroll', 'aufderhar.octavia@example.net', '6deda0194b6e9488ad47445b3e61179a0a85c9f1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('56', 'Kariane', 'Kuphal', 'gladys20@example.net', 'a48fd1d5efbb106bed5a1d291483e7a0bf7eaee8', '98');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('57', 'Shemar', 'Balistreri', 'nina14@example.com', '0539f6e26b4c6cf32ce64ecb75afee262efa2fb5', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('58', 'Ryder', 'Watsica', 'onie54@example.net', '3f55570db639171e8ec649e09c4e4e3b943095f9', '678125');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('59', 'Ewald', 'Bashirian', 'king20@example.com', 'b92685368d846558397151f83cbf819b20caa1b8', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('60', 'Royce', 'Gerhold', 'nolan.murray@example.com', 'c9bdea5e9d50d5d64c86e9984570a81f521f8a7f', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('61', 'Felipa', 'Collier', 'heaven.corwin@example.com', 'c88bd86ab284ac978cb522e9781dd5ec377a3264', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('62', 'Imelda', 'Kutch', 'boyle.adriel@example.org', '8de425a27b687dc31e1d2993b3f12309148081a3', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('63', 'Nikki', 'Mills', 'orlo.wolff@example.net', 'b395df85ba4ba1a6bd5771f26d982895851af63c', '461');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('64', 'Kennedy', 'Ratke', 'adalberto46@example.com', 'e2745b193bed592705f898c7d36f88539e7ef1bb', '46');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('65', 'Erik', 'O\'Conner', 'dallin54@example.com', '5804ef6b63196dca9d52b285f81877a1f50b8a00', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('66', 'Penelope', 'Grady', 'jaydon.aufderhar@example.net', '3055e231e2244f4530a3ec8b9d70cfdd2971370c', '358');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('67', 'Ardella', 'Rippin', 'kiera00@example.com', '34f994ae0de968a5b5ff9e5e87a2d007d371d410', '7128937121');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('68', 'Ebony', 'Skiles', 'abigayle13@example.net', '01f9a9c45045a43abc81602852c8c2e5ac2b4ff7', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('69', 'Delilah', 'Sporer', 'ngutmann@example.com', '5458ab3ba43b807807cd6fa9eb09a26b4a049ab0', '464');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('70', 'Camren', 'Beier', 'alfonzo.bednar@example.org', '6b7fc01ef0b61c87f722ea430218b05fb846f7bd', '206');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('71', 'Marlen', 'Deckow', 'paxton75@example.org', '0030995bba3e8036a43a52a3edcc4fa578bf19d4', '301143');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('72', 'Geovanni', 'Renner', 'bschaefer@example.org', 'd17e529d2cf2049839045ce948d379f552cf7296', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('73', 'Dewitt', 'Kutch', 'corkery.myrna@example.net', 'c5a4ea0ab9747592f9e4f2a2247e09baf5b4ab97', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('74', 'Carter', 'Flatley', 'kasey.dubuque@example.com', '25aa6240cb9d386e26f6c77d6e78aa703f46e963', '2703474440');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('75', 'Percival', 'Parisian', 'czboncak@example.org', '04e7c82d018cc5eb3cb7555f0e3ef2809e01cbcf', '498');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('76', 'Jimmie', 'Durgan', 'schoen.kaitlyn@example.com', 'c86410011f4ec7f1c2cee1e1e82139c0757ca895', '5935405049');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('77', 'Obie', 'Gottlieb', 'nader.colton@example.com', '6dfa06cf1c0f71b03ca7ec213d00a9d6be688704', '734');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('78', 'Terrance', 'Sawayn', 'rolfson.aaron@example.net', '36d0d89b7a3219a2342c9ff0bd8360034275adcb', '675620');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('79', 'Brown', 'Fritsch', 'mohr.quincy@example.net', '5f89e90704fc3f92fd4f59ab18b3ce25a16624b0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('80', 'Jennyfer', 'Marquardt', 'zgrady@example.net', 'a9a892f4866d3919b7f9834ced76dd5c7fd6a3ef', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('81', 'Abagail', 'Labadie', 'krajcik.maud@example.net', '3340406d2770fc6e41bc773f9f6e400287e38f61', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('82', 'Alysa', 'Durgan', 'stoltenberg.dora@example.com', '4475db9c21e240f28cc74a9a227cc940eb373015', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('83', 'Hilma', 'Koepp', 'vkuhn@example.net', '0b5471a859c955944ef1e67438e069e85f35e455', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('84', 'Jesus', 'Lockman', 'david.brakus@example.org', 'cec45c4f040650c4f26061fd0e160bbb9cadac78', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('85', 'Braeden', 'Abbott', 'banderson@example.com', '91573ef2359e1a9dda86a3973e6d3112e02e57ce', '336');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('86', 'Daphnee', 'Hayes', 'ortiz.salma@example.com', '0116eeb3d78310bcd09d79521b2fc8d6017f02d1', '434');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('87', 'Ignatius', 'Steuber', 'fmedhurst@example.net', '5c465c283a74f2aa2551167fb55b9856ed56709a', '302403');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('88', 'Dangelo', 'Daniel', 'ofriesen@example.net', 'c73f3ba810691564af757763713963a1f9ab8efc', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('89', 'Levi', 'Fahey', 'maude53@example.com', 'a6b77a8463d0846c24bb375392c6b39315bb47de', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('90', 'Tara', 'Stiedemann', 'courtney.waters@example.com', '96046d16a33c809d8687f023fe06ab2c5a734ab3', '769908');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('91', 'Lizeth', 'Tillman', 'jeramie.schneider@example.com', '8d858e1edfce4e81016bf74ebda8ba60e0a567d5', '7848078422');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('92', 'German', 'Bernhard', 'lyla.kilback@example.org', 'ce657a2bf3e07ecea20cf3508b01c06ea583ec91', '359296');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('93', 'Bradly', 'Hane', 'dexter90@example.com', 'f756869de7d3955b75679951f0da825ab4f17a80', '9172543909');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('94', 'Jadon', 'Rice', 'yvonne62@example.com', '3250f50e0b679e419adb274a52629c12800b2790', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('95', 'Alexandro', 'Durgan', 'dschoen@example.org', '3c5d6461ef1aa5f9a1a34741b7c107c2eb885716', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('96', 'Torrance', 'Grant', 'ahintz@example.org', 'd7334dd60e60010a3c26f4bc3214e7ddb530883b', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('97', 'Sonia', 'Pouros', 'mariane.paucek@example.com', 'd65066fe439fbe745f70d2526588f14e84fdf314', '9202244361');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('98', 'Boris', 'Ernser', 'alexandre66@example.com', 'de78a0e17fdca57ec3bcaac6b7383f3b76edf7fa', '78');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('99', 'Adam', 'Blanda', 'bauch.jaylan@example.net', '53071d5817458f57e1d36ba5ebdd87df57c6446d', '2390784352');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('100', 'Eunice', 'Treutel', 'doyle.scottie@example.org', '0d22d2f3e341c4dda7d9dff080085645b9111c62', '0');


DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(),
    
    INDEX (from_user_id),
    INDEX (to_user_id),
    FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (to_user_id) REFERENCES users(id)
);

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '1', '1', 'Sed laboriosam qui rerum ullam quod sunt aut itaque. Voluptatem nam vel ea accusantium numquam iste et eos. Sed praesentium consequuntur doloremque ad est voluptatem. Enim minima laudantium officia error nihil.', '2008-03-05 16:14:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '2', '2', 'Ratione accusamus quo nam est. Consequatur voluptas praesentium eius velit minima minima modi tempore. Maxime perferendis molestias et est omnis.', '2016-05-09 06:44:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '3', '3', 'Accusamus facere laboriosam voluptate. Corrupti sit ducimus sunt voluptate mollitia repellendus ad. Ut beatae nostrum rem cupiditate tempore.', '1982-09-18 09:37:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '4', '4', 'Aut suscipit similique omnis architecto. Unde soluta aut inventore harum exercitationem. Culpa nobis soluta illo est impedit voluptates. Voluptatem sunt aut possimus rerum asperiores porro accusantium.', '2005-07-10 07:30:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '5', '5', 'Placeat ab doloribus omnis ea porro occaecati et. Ab voluptas architecto illum qui eos. Omnis tempora dolores explicabo ipsum aut. Magnam omnis non rerum dolores dolorum vel.', '1998-04-22 20:31:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '6', '6', 'Qui dignissimos voluptatem dolores voluptatem. Reiciendis quam voluptatem ipsum qui asperiores quam ipsa. Nostrum est fugit maxime ut dolorem neque.', '1975-03-21 20:40:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '7', '7', 'Non tempora quas aut eos. Voluptatem laudantium accusantium ea inventore aut qui in. Ut non ad libero aut. Maxime dolores omnis corrupti qui expedita vel cum.', '1974-12-27 23:43:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '8', '8', 'Doloribus fugit nulla molestiae eos. Ducimus nostrum eum tempore et adipisci magni. A qui error assumenda soluta. Eligendi ad delectus sint earum. Expedita soluta reiciendis neque nesciunt et.', '2000-01-12 16:51:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '9', '9', 'Vel quia est maxime quibusdam delectus quaerat officia. Est sed quia cum consequuntur reprehenderit labore corporis eum. Sunt quaerat tempore ea. Animi in quia autem consequatur aut deserunt.', '2000-11-22 08:43:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '10', '10', 'Rem facere blanditiis sint minus et perspiciatis. Accusamus eaque natus voluptatem. Eum cumque velit hic qui exercitationem et. Voluptatum qui occaecati repellendus odio quae cupiditate quo. Similique dicta quibusdam illum eius ut.', '1990-10-15 17:39:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '11', '11', 'Est et autem nam autem. Illo perspiciatis qui consequatur quod assumenda at. Qui aut nam impedit fuga voluptates qui nemo. Impedit et quos consequatur officiis labore.', '1979-02-04 10:09:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '12', '12', 'Iste consequatur natus voluptatum similique eum iusto numquam. Porro deleniti consequatur aut. Quasi beatae natus ut maiores maxime vero. Minus ducimus officiis vel sapiente veritatis rerum.', '2004-09-06 13:59:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '13', '13', 'Voluptatem dolores et facilis voluptatibus expedita corrupti aspernatur. Optio mollitia id aut consectetur. Repellat et in consequatur accusamus enim dolorum. Commodi quos sint id modi. Illo qui et autem enim assumenda.', '2017-03-06 13:29:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '14', '14', 'Officia ut dignissimos veniam voluptate iusto. Blanditiis amet ut neque dolore ipsum quae qui quia. Consequatur et possimus velit aut ut.', '1986-06-22 09:34:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '15', '15', 'Eaque dolor autem iusto et est voluptate laudantium ut. Consequatur voluptatem unde incidunt in eum et. Qui id veritatis quas qui aut vel. Et qui mollitia sit saepe aut nobis.', '1989-10-14 13:57:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '16', '16', 'Maiores enim provident aut. In nihil dolorem voluptas et debitis inventore eligendi. Ut optio maxime id neque.', '2014-02-13 20:29:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '17', '17', 'Soluta unde dignissimos est. Quia autem praesentium sit rerum nihil. Minus ut excepturi ut atque. Accusantium eum dolor corporis ullam ullam qui soluta. Quos ut asperiores ab possimus vel ullam tempore.', '1994-11-30 11:59:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '18', '18', 'Facilis est est illum sed dolores. Ut voluptas autem cumque nihil officiis. Rerum voluptas quibusdam debitis maxime voluptas aut qui. Ratione temporibus reprehenderit est voluptas aut ut.', '1997-10-31 12:49:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '19', '19', 'Est sit incidunt totam consectetur ipsam qui omnis eos. Consequuntur voluptate occaecati laboriosam ut est eos voluptas iste. Fugiat et est nulla enim ipsum laudantium dignissimos.', '2017-03-08 05:41:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '20', '20', 'Temporibus omnis non impedit magni sint recusandae. Libero officiis et deleniti voluptas.', '1988-05-21 17:01:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '21', '21', 'Perspiciatis molestias non id possimus similique. Et et aut animi dolorum. Et fugit autem nisi enim incidunt asperiores. Voluptate eligendi et fugit ut est ut minima.', '1989-02-07 04:23:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '22', '22', 'Omnis quisquam quaerat qui ea aspernatur laudantium. Voluptates non a ab soluta eos est.', '1986-03-24 01:15:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '23', '23', 'Facere sed numquam ut quaerat. Odit in voluptatum ratione nesciunt soluta. Repellat aut quo praesentium distinctio. Esse praesentium qui officia.', '1979-02-14 07:50:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '24', '24', 'Nam neque dignissimos omnis doloribus velit quae excepturi. Totam exercitationem et et est ad asperiores animi. Velit asperiores quis modi quasi similique ipsam. Perferendis eaque doloremque quaerat voluptatum cumque velit. Accusantium repellendus et sapiente sed fugit fugit quam.', '1986-01-21 08:13:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '25', '25', 'Itaque quia aliquid hic voluptatem numquam esse asperiores. Aut et et totam ut non est voluptas. Mollitia illum ut quod placeat aliquam neque ut.', '1985-12-21 13:39:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '26', '26', 'Rerum quaerat voluptatem laudantium occaecati deserunt qui rerum. Et consequatur ipsam et ullam aut non. Quas iusto fugit et occaecati iste sit eos ad.', '1991-01-22 13:45:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '27', '27', 'Tenetur ut qui ad. At distinctio quos eius. Voluptatibus occaecati quia incidunt et. Ea culpa explicabo eligendi vitae ipsa.', '1994-09-28 16:25:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '28', '28', 'Expedita quam ipsam mollitia sed et. Ducimus minima voluptatum ut excepturi laboriosam quis et. Nihil enim rerum eos nihil quo a assumenda. Natus sed at iusto voluptatum eaque illum corrupti. Sint occaecati sapiente vel sit.', '2013-07-03 12:18:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '29', '29', 'Beatae eligendi incidunt soluta perferendis quidem alias. Repellendus accusantium qui dignissimos ut sed voluptatem. Consequatur perferendis tempore deleniti in magnam qui. Est reiciendis ut impedit.', '1980-10-25 04:51:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '30', '30', 'Autem architecto error voluptas deserunt ea. Excepturi explicabo qui ipsum quibusdam nemo suscipit. Ad vero mollitia omnis qui dolores nihil et mollitia.', '1974-01-12 20:13:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '31', '31', 'Minima labore est et sed sequi soluta ipsum. Et minima et praesentium doloremque impedit qui. Minima nam blanditiis quia beatae non.', '1972-11-16 02:36:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '32', '32', 'Et deleniti eveniet tenetur incidunt eos ut accusamus. Est fugiat iure itaque ut ea ut qui. Perferendis nemo culpa laboriosam aut voluptates ab qui. Est magnam iste qui velit.', '2015-10-25 21:57:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '33', '33', 'Est laudantium quisquam ut. Sunt consectetur nam dignissimos sunt nobis explicabo quia. Et nulla consequuntur minus fugiat alias autem optio aut. Consequatur incidunt repellendus consequatur aliquam et. Aspernatur rem enim provident laboriosam et sunt.', '2013-08-24 09:25:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '34', '34', 'Amet quo quod corporis illo. Eum magnam quo deserunt dolore officia. Soluta qui praesentium dolore animi.', '2000-04-18 00:44:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '35', '35', 'Officia dignissimos ratione explicabo nemo adipisci doloribus consequatur. Repudiandae hic aut a. Impedit consequatur ut iste magni distinctio autem.', '2005-10-04 06:57:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '36', '36', 'Unde sint ut minus eveniet. Minus quasi sequi nisi ea vel. Repellendus dolores similique qui et voluptates et. Totam voluptas nam inventore sint.', '2011-03-05 19:54:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '37', '37', 'Exercitationem saepe nobis dolor totam et mollitia. Aut qui quam iste aut qui iusto. Ut tempora quis alias temporibus dolores debitis.', '2011-02-12 05:04:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '38', '38', 'Voluptatem at voluptatem dolore non. Est autem esse molestiae et qui voluptates eos.', '1979-03-09 20:17:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '39', '39', 'Sequi iure pariatur fugiat non reprehenderit incidunt. Quia id omnis repudiandae et amet earum. Eaque numquam exercitationem cum quisquam deleniti.', '1993-11-30 11:50:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '40', '40', 'Sapiente est ex voluptas nihil. Tempore sunt id explicabo temporibus rerum totam. Qui rerum quisquam reiciendis similique ullam accusamus eum laborum.', '2007-12-08 14:55:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '41', '41', 'Velit quibusdam dolores soluta enim velit. Id blanditiis velit nostrum numquam officiis amet consequuntur. Iusto eum nulla non quos libero. Molestias quae consequatur in soluta aut.', '2015-05-18 06:42:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '42', '42', 'Incidunt qui fugit nihil. Quis et delectus quas beatae non. Optio deserunt veritatis voluptatem nostrum debitis expedita officiis. Deleniti nihil porro enim eos sequi.', '1977-06-21 03:39:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '43', '43', 'Aut eos non pariatur aliquam pariatur. Consequatur ut numquam numquam earum tenetur culpa. Deleniti fuga possimus amet quisquam non aperiam impedit.', '1975-05-19 03:20:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '44', '44', 'Voluptatem iusto dolores omnis minus deleniti assumenda ipsum ipsum. Inventore accusamus voluptate voluptatem sint sed nisi.', '1977-07-22 08:29:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '45', '45', 'Veritatis tempore inventore facere incidunt impedit explicabo voluptates. Aut ea consequatur placeat suscipit ipsam fugiat. Molestiae voluptas excepturi corporis accusamus sapiente et. Consequuntur fuga temporibus atque aut ducimus numquam aut qui.', '1999-03-07 19:02:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '46', '46', 'Sequi exercitationem possimus quisquam quo qui laboriosam similique. Omnis suscipit perferendis fuga molestiae. Commodi tempore deserunt quis id consequuntur velit repudiandae asperiores. Beatae non reprehenderit aut sapiente quia.', '2010-03-02 17:39:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '47', '47', 'Iste quo veniam rerum minus. Incidunt repellat doloribus cum libero explicabo deserunt. Possimus nobis fugiat dolores magnam vel accusantium quo.', '1984-02-12 21:32:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '48', '48', 'Dolorum laboriosam veniam reiciendis consequuntur fugiat est et et. Facilis et eveniet aspernatur consectetur quaerat dolores. Qui est fuga dolor tempore modi.', '1974-04-18 13:21:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '49', '49', 'Veniam quia fuga quae quaerat ut quos. Sunt hic nisi ut aliquam dolorum nisi dolor neque. Modi placeat aliquid ut assumenda. Perferendis at at expedita in nemo quibusdam ut eaque.', '1996-11-23 00:47:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '50', '50', 'Eius et mollitia asperiores ut illum veniam sint. Commodi saepe voluptatem facilis et dicta quas.', '2013-04-09 16:46:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '51', '51', 'Sequi qui est alias sunt id nemo repellendus omnis. Omnis qui omnis tenetur impedit nostrum nostrum aut. Cum officiis quia rem illum. Architecto qui rerum dicta est velit.', '1980-03-12 10:32:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '52', '52', 'Hic facilis perferendis accusantium sint et deserunt animi aliquid. Non cupiditate alias maiores animi expedita deleniti. Est molestias nostrum qui repellendus.', '2017-12-09 08:58:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '53', '53', 'Rerum inventore molestiae enim consequatur et ut et. Natus laborum sed reiciendis et labore omnis. Omnis aut dolorum unde hic. Nam sapiente non et ea.', '1980-07-01 01:53:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '54', '54', 'Perferendis sed expedita illo natus. Voluptatibus voluptatum sint voluptates provident. Nulla velit eaque architecto officia. Sunt voluptatem rerum quia est doloremque.', '1991-08-10 08:54:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '55', '55', 'Quod doloribus molestiae quaerat et saepe ipsum incidunt enim. Qui id a delectus assumenda id non. Fuga et aliquid excepturi doloremque velit cupiditate accusantium dicta. Aut et magnam reiciendis aut et commodi. Eos sint et non aliquid incidunt est quidem.', '1997-05-10 02:38:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '56', '56', 'Rerum sequi ab est maxime. Nostrum quis minus dolor ut dolorem. Consequatur nulla commodi tempora unde voluptatem velit deserunt.', '1999-05-23 20:07:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '57', '57', 'Iure deleniti consequatur corrupti voluptas soluta. Sed quos omnis cupiditate quis illum. Voluptas ratione nesciunt expedita occaecati eum quam.', '1993-01-02 02:02:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '58', '58', 'Quis non earum nesciunt tempora. Excepturi repellendus cupiditate harum et. Velit at adipisci est nesciunt.', '2015-03-13 03:31:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '59', '59', 'Dolorum aut porro et debitis sed qui voluptates. Sed qui aut voluptates nobis. Laborum illo illo necessitatibus nesciunt commodi qui. Velit occaecati non est et asperiores quibusdam dolorem.', '2013-05-25 11:13:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '60', '60', 'Voluptatem ut aliquam soluta similique dolorem impedit. Magni dolorem illum consequuntur sit hic recusandae qui. Animi odit ea et in omnis.', '1974-01-05 22:58:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '61', '61', 'Modi placeat omnis quod odit est aut alias eum. Perferendis quo illo minima sapiente fuga quis. Occaecati est eaque et quidem.', '2018-03-17 13:14:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '62', '62', 'Vitae sunt nihil quibusdam aliquam enim similique iure. Voluptatibus aut nihil quae totam. Quasi voluptate error architecto fuga officia. Quam eius tempore veritatis impedit occaecati et. Maxime modi sapiente temporibus consequatur dolorem minima est porro.', '1978-03-31 08:56:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '63', '63', 'Amet qui quis consectetur ut et. Sit laudantium sapiente expedita consequatur. Tempora voluptatem quidem ipsam sunt praesentium quam assumenda. Explicabo et quia recusandae debitis sunt nisi.', '2010-11-24 02:20:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '64', '64', 'Quo nulla qui et. Qui sit quod aut voluptatum qui. Et vero veniam aliquam corporis voluptatem ex qui odit. Et perferendis et quos ea ullam.', '2014-05-09 13:00:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '65', '65', 'Quis voluptatem vel quos officiis necessitatibus consequatur maxime. Accusantium incidunt voluptatem suscipit. Tempore dolorum et labore ex molestias deserunt facere natus.', '1997-05-16 02:42:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '66', '66', 'Accusantium eaque harum alias ratione aut iure. Est quam quod aut. Voluptatibus porro quia quod earum.', '2005-11-26 18:17:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '67', '67', 'Ipsam aut aperiam veniam labore quas eos voluptatem totam. At unde pariatur non qui. Nihil enim debitis illo facilis tempore ut.', '1976-12-19 12:14:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '68', '68', 'Cum rerum quaerat praesentium sit praesentium aut. Est deserunt ea ullam qui veritatis aspernatur consequuntur fugit.', '2014-05-11 16:25:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '69', '69', 'Illo amet quidem vel dignissimos. Omnis commodi quia quidem repellat. Dolorum aut dolore eveniet.', '1990-09-15 21:08:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '70', '70', 'Velit tenetur corrupti placeat asperiores ut voluptates. Vero nihil facere nemo omnis. In dolor blanditiis et est voluptas numquam accusamus.', '2011-06-05 20:41:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '71', '71', 'Voluptas eligendi odio aperiam aperiam error alias nisi sed. Nulla consequatur voluptatem ab debitis voluptas in. Aliquam impedit itaque iure distinctio atque fugit molestias molestiae.', '1995-12-30 04:04:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '72', '72', 'Alias veritatis aut qui sed enim. Qui aliquam quo totam aut. Est nulla eum iste soluta.', '1975-05-05 20:21:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '73', '73', 'Incidunt et dolore ipsam ut. Dolor est a in laboriosam aliquam eaque. Ea qui tenetur numquam architecto. Consequatur voluptatum numquam saepe iste.', '1992-11-21 21:48:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '74', '74', 'Nam quos laborum est molestiae. Doloremque doloremque repudiandae sed vitae molestiae. Ipsa fuga deleniti odit eum inventore alias voluptatibus. Necessitatibus maiores maiores et et a sint eligendi.', '1984-04-09 12:04:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '75', '75', 'Non asperiores aperiam animi aut ipsa deleniti vel perferendis. Sit repellat dolor numquam assumenda. Porro vero et iure itaque maiores. Et est alias et ad laudantium voluptas est.', '2019-04-07 10:30:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '76', '76', 'Ipsam vitae aut labore dignissimos eveniet aut. Rerum hic consequuntur totam quidem et voluptatem rerum. Explicabo reiciendis hic recusandae amet suscipit sunt commodi. Facilis sed quasi fuga dolorem voluptatem deserunt.', '1980-10-30 15:42:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '77', '77', 'Magni accusamus vel soluta pariatur voluptatibus sequi. Quisquam ipsa tempora vero quam. Voluptatem ipsa blanditiis repellat voluptatum quia. Qui vero sed consequatur saepe expedita eos. Veritatis esse quam eos fuga.', '1973-06-24 21:59:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '78', '78', 'Nemo ab vel voluptate sapiente reprehenderit. Omnis aliquid libero molestiae eos est asperiores. Sapiente aut autem aperiam.', '2002-03-12 00:30:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '79', '79', 'Rerum hic dolorem nesciunt magnam aperiam qui praesentium. Et doloremque qui et voluptas laudantium excepturi. Velit in consequuntur tempore qui eum voluptatum. Molestiae illo assumenda nam libero sunt ut dolores.', '1983-04-18 10:11:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '80', '80', 'Inventore distinctio aspernatur fugit magnam natus. Similique adipisci voluptatem enim dignissimos tenetur rerum magnam. Vel nesciunt ea dolor voluptas perspiciatis dolor minima et. Eum enim atque dolores quaerat maxime sunt et quia.', '2009-12-01 23:34:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '81', '81', 'Aut nihil accusamus repellendus pariatur dolore. Vel vel ipsum officia nisi laboriosam. Doloribus alias hic provident iste. Sit corporis numquam iste quaerat.', '1986-07-28 08:51:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '82', '82', 'Nisi quibusdam perspiciatis eos et. Officia asperiores reiciendis numquam aut voluptas eos ut. At ut deleniti est maxime. Corporis accusantium sapiente sit non dolores.', '1987-01-04 02:45:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '83', '83', 'Laudantium alias repellendus cumque. Molestiae autem ea reprehenderit natus soluta est rerum corporis. Minus magnam et sed quia architecto.', '2005-04-04 09:39:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '84', '84', 'Repellat enim exercitationem beatae. Temporibus voluptas omnis molestiae provident nobis.', '2006-11-13 03:11:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '85', '85', 'Natus repudiandae ullam id neque sit architecto ad. Odit facere exercitationem dolor dolor. Et tenetur consequatur velit maxime provident. Sed iure ipsam est tenetur.', '1995-04-01 07:59:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '86', '86', 'Pariatur odio accusantium exercitationem sed harum impedit. Animi officiis at enim. Ullam voluptatem dolorum ab. Sit ut libero deleniti natus nihil repellat sint enim.', '1990-08-03 11:02:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '87', '87', 'Necessitatibus officiis aut maiores. Officia amet aut deleniti ea repellendus tempore et.', '1994-02-13 21:26:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '88', '88', 'Ut minus quae molestias nihil tenetur molestias distinctio. Quisquam odit facilis accusantium. Aliquam doloribus consequuntur cumque consequuntur. Qui illo aut autem repellat reprehenderit natus.', '1994-10-31 03:58:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '89', '89', 'Laudantium illo voluptatum sed omnis. Similique rerum odit aspernatur quo alias minima suscipit. Impedit totam rem nemo reprehenderit sed at quos. Reiciendis molestias accusantium placeat animi aut et qui sed. Ex cupiditate voluptas in voluptas blanditiis architecto aliquid.', '1991-12-29 21:48:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '90', '90', 'Quia ut quos adipisci quo dolor ipsa. Sunt nihil dolores maiores suscipit. Possimus id aspernatur quibusdam mollitia ut.', '1971-01-22 03:04:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('91', '91', '91', 'Quo illum nam ut est earum quia fuga qui. Ullam odio velit veritatis consequatur ut facilis.', '1980-06-08 13:27:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('92', '92', '92', 'Qui et et ut. Debitis quis numquam quia beatae. Deserunt quia quod voluptatem dolores.', '1976-02-09 17:30:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('93', '93', '93', 'Ducimus ad et sit ut repellendus et explicabo dolores. Nobis explicabo reiciendis numquam consectetur ut ducimus. Cumque et rerum commodi. Voluptatum cumque culpa consequatur et vel pariatur.', '1986-09-18 13:18:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('94', '94', '94', 'Aperiam fuga non nesciunt eum vitae est. Cupiditate repudiandae provident quaerat. Cupiditate odit non est cum qui et ratione.', '1977-03-03 10:00:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('95', '95', '95', 'Dolores maiores quidem quam officia ut accusamus. Et aut dolor quos et non velit. Amet hic nam nam dolor voluptatum est repellendus. Magni et dolorem error aut dolor. Iste et cupiditate explicabo aliquid dolores et temporibus distinctio.', '1982-03-30 05:31:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('96', '96', '96', 'Quam soluta aut maiores placeat. Nostrum maxime commodi aliquid omnis magnam. Quia id praesentium beatae earum fugiat tempore eligendi impedit. Eius vero eum nisi autem optio nemo.', '1976-01-21 19:51:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('97', '97', '97', 'Quod ipsa rerum est molestiae beatae omnis rerum assumenda. Magni sequi ut vitae illum. Sint qui rerum voluptatibus id deleniti laboriosam facilis quos. Sed neque perspiciatis rerum eos et molestiae voluptas.', '1976-08-30 16:32:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('98', '98', '98', 'Aut itaque sunt velit veniam sint laboriosam. Mollitia fuga quia est exercitationem. Voluptatem doloremque quia id. Sint voluptates ut dicta consequatur.', '2015-03-13 21:56:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('99', '99', '99', 'Officiis repudiandae delectus reiciendis aut tempore rerum odio nobis. Qui vero earum cum fugiat officia reprehenderit. Sed et quia eveniet sunt est perspiciatis et.', '1995-08-08 21:17:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('100', '100', '100', 'Optio veritatis quasi quam vel quasi sit. Tempora ut temporibus qui placeat atque. Odit molestiae consequuntur ducimus voluptatem dolor alias. Enim architecto aut vel natus.', '1988-12-12 07:31:11');

DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_requests (
	initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id BIGINT UNSIGNED NOT NULL,
    `status` ENUM('requested', 'approved', 'unfriended', 'declined'),
   	requested_at DATETIME DEFAULT NOW(),
	updated_at DATETIME,
	
    PRIMARY KEY (initiator_user_id, target_user_id),
	INDEX (initiator_user_id),
    INDEX (target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id),
    FOREIGN KEY (target_user_id) REFERENCES users(id)
);

INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1', '1', 'unfriended', '2016-12-13 11:20:38', '1996-12-06 04:55:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('2', '2', 'approved', '1976-05-04 03:33:16', '2017-06-19 16:30:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('3', '3', 'approved', '1985-10-03 14:53:11', '1977-03-21 06:20:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('4', '4', 'unfriended', '2008-07-12 00:34:16', '2018-05-02 05:49:31');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('5', '5', 'declined', '2012-03-30 07:32:10', '2006-11-06 00:33:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('6', '6', 'declined', '1986-04-19 16:42:26', '1991-11-21 03:50:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('7', '7', 'requested', '1997-01-12 14:30:00', '1989-08-08 20:12:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('8', '8', 'requested', '1996-01-19 15:17:50', '2018-06-12 18:05:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('9', '9', 'declined', '1977-07-01 12:12:54', '1971-05-07 04:28:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('10', '10', 'approved', '1991-11-13 06:55:22', '1993-08-31 03:43:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('11', '11', 'unfriended', '1981-12-29 12:48:01', '2005-02-27 17:57:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('12', '12', 'approved', '1973-05-15 11:39:24', '1982-02-08 11:35:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('13', '13', 'unfriended', '1980-11-23 15:05:39', '2007-01-17 08:36:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('14', '14', 'approved', '2015-06-13 17:07:43', '2017-02-02 03:19:56');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('15', '15', 'approved', '1982-09-07 17:07:39', '1993-05-26 19:07:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('16', '16', 'approved', '1973-12-13 14:41:57', '1997-10-27 20:11:28');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('17', '17', 'unfriended', '2011-03-19 19:56:02', '1970-04-27 20:11:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('18', '18', 'approved', '1992-09-22 12:53:12', '2011-03-21 02:12:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('19', '19', 'declined', '1984-11-07 20:25:26', '1978-08-25 03:32:28');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('20', '20', 'approved', '1977-06-27 01:35:27', '2007-12-07 19:44:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('21', '21', 'approved', '2017-02-28 17:18:05', '2003-12-21 03:29:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('22', '22', 'unfriended', '2009-03-20 02:57:18', '2003-11-13 08:49:28');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('23', '23', 'requested', '1997-04-14 21:52:31', '2001-04-19 17:15:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('24', '24', 'approved', '1983-12-14 08:56:53', '2007-07-07 03:19:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('25', '25', 'approved', '1983-10-04 12:07:18', '1990-06-19 22:27:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('26', '26', 'approved', '2009-05-17 02:18:41', '1979-07-27 13:09:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('27', '27', 'approved', '2009-03-23 07:04:40', '1993-10-25 00:33:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('28', '28', 'declined', '1977-09-02 15:25:04', '1971-04-14 22:16:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('29', '29', 'unfriended', '1975-10-10 22:37:22', '2018-02-09 15:08:24');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('30', '30', 'requested', '2011-04-28 21:40:04', '2000-06-01 19:21:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('31', '31', 'declined', '1974-11-24 03:19:38', '1977-05-19 02:35:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('32', '32', 'approved', '2002-10-19 00:34:52', '2006-03-01 02:54:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('33', '33', 'approved', '2018-07-14 16:20:00', '1995-12-10 04:31:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('34', '34', 'requested', '2014-06-15 13:22:40', '1974-01-22 02:05:28');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('35', '35', 'unfriended', '2005-07-09 18:34:44', '2008-11-12 07:26:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('36', '36', 'approved', '1974-01-03 10:48:32', '1995-01-30 19:37:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('37', '37', 'requested', '1989-02-23 19:48:24', '2008-03-01 21:05:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('38', '38', 'unfriended', '1992-07-06 20:54:26', '1993-05-17 07:07:24');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('39', '39', 'approved', '2013-12-06 06:38:30', '1983-07-11 20:53:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('40', '40', 'requested', '2012-11-02 09:35:13', '1977-07-12 13:18:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('41', '41', 'unfriended', '1977-05-05 04:03:36', '2000-07-07 12:42:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('42', '42', 'approved', '2002-07-05 17:08:17', '1978-01-17 08:26:23');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('43', '43', 'declined', '1984-04-23 09:35:11', '1975-03-23 02:39:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('44', '44', 'unfriended', '2017-08-14 13:37:19', '1985-06-19 04:11:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('45', '45', 'declined', '2010-06-05 06:06:16', '1993-02-28 01:55:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('46', '46', 'declined', '1990-10-26 11:55:03', '1984-08-12 23:51:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('47', '47', 'requested', '1992-04-27 02:18:53', '1987-04-01 09:48:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('48', '48', 'approved', '1987-06-08 22:06:57', '2006-06-24 04:37:31');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('49', '49', 'requested', '1998-01-28 02:30:06', '1998-09-28 06:54:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('50', '50', 'requested', '2011-11-09 21:39:55', '1982-11-13 21:20:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('51', '51', 'requested', '2012-12-03 01:20:44', '1994-04-03 10:17:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('52', '52', 'requested', '2006-05-08 05:15:43', '1978-06-14 12:52:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('53', '53', 'approved', '2016-02-18 06:25:02', '1981-06-27 12:32:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('54', '54', 'requested', '2002-02-17 08:11:56', '1984-01-20 18:12:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('55', '55', 'requested', '1997-11-03 02:47:20', '2007-06-05 02:07:26');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('56', '56', 'approved', '1991-01-07 05:24:31', '1975-04-07 07:46:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('57', '57', 'unfriended', '1995-07-13 18:00:15', '1974-08-14 12:58:52');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('58', '58', 'declined', '1973-08-31 08:35:40', '2005-01-14 19:42:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('59', '59', 'requested', '1983-02-10 18:30:51', '1983-11-28 17:28:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('60', '60', 'declined', '1993-07-15 04:27:43', '1998-06-18 20:50:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('61', '61', 'requested', '1979-08-26 23:59:50', '1983-05-02 19:42:28');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('62', '62', 'approved', '1980-04-24 08:03:30', '2007-04-17 12:23:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('63', '63', 'requested', '1975-03-08 10:08:41', '1993-07-01 04:31:17');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('64', '64', 'unfriended', '1997-08-18 23:57:10', '2012-09-26 22:12:28');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('65', '65', 'approved', '1974-09-14 03:09:08', '1993-11-28 02:30:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('66', '66', 'approved', '2007-12-02 08:20:49', '1999-02-04 02:37:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('67', '67', 'unfriended', '1971-07-31 17:47:58', '1979-10-20 00:50:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('68', '68', 'declined', '2008-03-14 16:40:46', '2010-07-28 14:08:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('69', '69', 'declined', '2009-12-02 19:04:32', '2008-05-02 20:59:31');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('70', '70', 'unfriended', '1993-04-24 04:54:22', '1994-10-12 16:47:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('71', '71', 'unfriended', '1973-07-18 10:03:01', '1979-08-10 11:17:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('72', '72', 'unfriended', '1996-05-07 11:37:01', '2000-03-04 03:22:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('73', '73', 'unfriended', '2016-05-22 13:09:20', '1978-01-11 13:14:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('74', '74', 'declined', '2001-12-30 14:56:58', '2017-03-28 21:49:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('75', '75', 'requested', '2009-02-03 16:46:14', '1995-11-24 00:09:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('76', '76', 'unfriended', '1992-08-01 00:57:37', '2019-06-19 08:21:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('77', '77', 'requested', '1992-12-07 13:59:59', '2018-12-29 22:39:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('78', '78', 'declined', '2001-10-29 07:16:22', '2010-06-21 06:46:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('79', '79', 'requested', '1998-09-30 14:58:52', '2005-01-23 12:39:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('80', '80', 'unfriended', '2017-01-21 18:34:52', '2007-09-09 22:14:29');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('81', '81', 'unfriended', '1999-03-01 16:02:34', '1978-12-17 13:31:08');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('82', '82', 'unfriended', '1999-01-16 06:52:09', '1989-01-06 04:25:39');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('83', '83', 'unfriended', '1975-03-13 07:19:56', '1975-04-24 16:43:59');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('84', '84', 'declined', '1973-07-21 09:48:05', '1972-12-30 16:59:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('85', '85', 'approved', '2019-07-26 22:41:08', '2012-10-26 18:45:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('86', '86', 'requested', '2009-12-24 04:20:20', '1971-07-08 22:36:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('87', '87', 'unfriended', '1989-03-13 21:53:27', '2006-01-03 14:45:08');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('88', '88', 'approved', '1972-02-04 04:00:20', '2007-06-07 23:59:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('89', '89', 'declined', '1993-12-31 07:08:02', '1980-08-29 22:17:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('90', '90', 'requested', '1984-01-29 13:51:44', '1972-02-29 12:04:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('91', '91', 'unfriended', '1996-12-02 11:50:18', '2018-08-06 21:29:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('92', '92', 'requested', '1992-05-06 12:28:51', '1998-02-16 23:12:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('93', '93', 'requested', '1998-07-15 18:12:01', '1983-06-04 05:42:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('94', '94', 'requested', '2015-06-26 16:00:31', '2016-07-24 22:22:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('95', '95', 'approved', '1987-01-14 23:05:39', '2002-05-01 12:44:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('96', '96', 'requested', '1980-05-30 11:09:19', '2018-09-16 06:40:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('97', '97', 'declined', '2010-02-11 15:48:13', '2008-07-15 20:33:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('98', '98', 'requested', '1982-07-21 04:04:30', '2014-06-26 23:45:10');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('99', '99', 'declined', '2006-02-14 22:35:24', '1975-02-10 14:27:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('100', '100', 'unfriended', '1981-03-12 23:32:31', '2007-04-21 02:23:00');


DROP TABLE IF EXISTS communities;
CREATE TABLE communities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(150),

	INDEX (name)
);

INSERT INTO `communities` (`id`, `name`) VALUES ('72', 'ab');
INSERT INTO `communities` (`id`, `name`) VALUES ('45', 'animi');
INSERT INTO `communities` (`id`, `name`) VALUES ('85', 'asperiores');
INSERT INTO `communities` (`id`, `name`) VALUES ('76', 'at');
INSERT INTO `communities` (`id`, `name`) VALUES ('44', 'aut');
INSERT INTO `communities` (`id`, `name`) VALUES ('84', 'aut');
INSERT INTO `communities` (`id`, `name`) VALUES ('91', 'aut');
INSERT INTO `communities` (`id`, `name`) VALUES ('99', 'aut');
INSERT INTO `communities` (`id`, `name`) VALUES ('37', 'autem');
INSERT INTO `communities` (`id`, `name`) VALUES ('50', 'commodi');
INSERT INTO `communities` (`id`, `name`) VALUES ('29', 'consequuntur');
INSERT INTO `communities` (`id`, `name`) VALUES ('8', 'debitis');
INSERT INTO `communities` (`id`, `name`) VALUES ('11', 'delectus');
INSERT INTO `communities` (`id`, `name`) VALUES ('81', 'dolorem');
INSERT INTO `communities` (`id`, `name`) VALUES ('96', 'doloribus');
INSERT INTO `communities` (`id`, `name`) VALUES ('22', 'dolorum');
INSERT INTO `communities` (`id`, `name`) VALUES ('55', 'ducimus');
INSERT INTO `communities` (`id`, `name`) VALUES ('46', 'eius');
INSERT INTO `communities` (`id`, `name`) VALUES ('68', 'est');
INSERT INTO `communities` (`id`, `name`) VALUES ('69', 'est');
INSERT INTO `communities` (`id`, `name`) VALUES ('79', 'est');
INSERT INTO `communities` (`id`, `name`) VALUES ('21', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('40', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('62', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('92', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('4', 'eum');
INSERT INTO `communities` (`id`, `name`) VALUES ('42', 'eum');
INSERT INTO `communities` (`id`, `name`) VALUES ('82', 'exercitationem');
INSERT INTO `communities` (`id`, `name`) VALUES ('16', 'facilis');
INSERT INTO `communities` (`id`, `name`) VALUES ('54', 'fugit');
INSERT INTO `communities` (`id`, `name`) VALUES ('25', 'incidunt');
INSERT INTO `communities` (`id`, `name`) VALUES ('41', 'incidunt');
INSERT INTO `communities` (`id`, `name`) VALUES ('60', 'ipsam');
INSERT INTO `communities` (`id`, `name`) VALUES ('33', 'iste');
INSERT INTO `communities` (`id`, `name`) VALUES ('23', 'labore');
INSERT INTO `communities` (`id`, `name`) VALUES ('98', 'labore');
INSERT INTO `communities` (`id`, `name`) VALUES ('5', 'libero');
INSERT INTO `communities` (`id`, `name`) VALUES ('93', 'magnam');
INSERT INTO `communities` (`id`, `name`) VALUES ('14', 'maxime');
INSERT INTO `communities` (`id`, `name`) VALUES ('86', 'maxime');
INSERT INTO `communities` (`id`, `name`) VALUES ('31', 'minima');
INSERT INTO `communities` (`id`, `name`) VALUES ('58', 'minima');
INSERT INTO `communities` (`id`, `name`) VALUES ('34', 'molestiae');
INSERT INTO `communities` (`id`, `name`) VALUES ('35', 'mollitia');
INSERT INTO `communities` (`id`, `name`) VALUES ('12', 'nam');
INSERT INTO `communities` (`id`, `name`) VALUES ('59', 'natus');
INSERT INTO `communities` (`id`, `name`) VALUES ('18', 'neque');
INSERT INTO `communities` (`id`, `name`) VALUES ('39', 'nesciunt');
INSERT INTO `communities` (`id`, `name`) VALUES ('38', 'non');
INSERT INTO `communities` (`id`, `name`) VALUES ('47', 'nostrum');
INSERT INTO `communities` (`id`, `name`) VALUES ('6', 'nulla');
INSERT INTO `communities` (`id`, `name`) VALUES ('80', 'odit');
INSERT INTO `communities` (`id`, `name`) VALUES ('95', 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES ('63', 'optio');
INSERT INTO `communities` (`id`, `name`) VALUES ('61', 'pariatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('57', 'placeat');
INSERT INTO `communities` (`id`, `name`) VALUES ('66', 'quasi');
INSERT INTO `communities` (`id`, `name`) VALUES ('43', 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES ('65', 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES ('73', 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES ('94', 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES ('3', 'quia');
INSERT INTO `communities` (`id`, `name`) VALUES ('52', 'quia');
INSERT INTO `communities` (`id`, `name`) VALUES ('64', 'quis');
INSERT INTO `communities` (`id`, `name`) VALUES ('48', 'quos');
INSERT INTO `communities` (`id`, `name`) VALUES ('49', 'ratione');
INSERT INTO `communities` (`id`, `name`) VALUES ('77', 'ratione');
INSERT INTO `communities` (`id`, `name`) VALUES ('97', 'repellendus');
INSERT INTO `communities` (`id`, `name`) VALUES ('26', 'repudiandae');
INSERT INTO `communities` (`id`, `name`) VALUES ('28', 'rerum');
INSERT INTO `communities` (`id`, `name`) VALUES ('53', 'rerum');
INSERT INTO `communities` (`id`, `name`) VALUES ('71', 'rerum');
INSERT INTO `communities` (`id`, `name`) VALUES ('32', 'saepe');
INSERT INTO `communities` (`id`, `name`) VALUES ('36', 'sed');
INSERT INTO `communities` (`id`, `name`) VALUES ('51', 'sequi');
INSERT INTO `communities` (`id`, `name`) VALUES ('88', 'sequi');
INSERT INTO `communities` (`id`, `name`) VALUES ('78', 'sint');
INSERT INTO `communities` (`id`, `name`) VALUES ('87', 'sint');
INSERT INTO `communities` (`id`, `name`) VALUES ('15', 'sit');
INSERT INTO `communities` (`id`, `name`) VALUES ('9', 'sunt');
INSERT INTO `communities` (`id`, `name`) VALUES ('75', 'sunt');
INSERT INTO `communities` (`id`, `name`) VALUES ('7', 'tempora');
INSERT INTO `communities` (`id`, `name`) VALUES ('70', 'temporibus');
INSERT INTO `communities` (`id`, `name`) VALUES ('90', 'unde');
INSERT INTO `communities` (`id`, `name`) VALUES ('2', 'ut');
INSERT INTO `communities` (`id`, `name`) VALUES ('10', 'ut');
INSERT INTO `communities` (`id`, `name`) VALUES ('20', 'velit');
INSERT INTO `communities` (`id`, `name`) VALUES ('56', 'veniam');
INSERT INTO `communities` (`id`, `name`) VALUES ('27', 'veritatis');
INSERT INTO `communities` (`id`, `name`) VALUES ('67', 'veritatis');
INSERT INTO `communities` (`id`, `name`) VALUES ('24', 'vero');
INSERT INTO `communities` (`id`, `name`) VALUES ('17', 'voluptas');
INSERT INTO `communities` (`id`, `name`) VALUES ('19', 'voluptas');
INSERT INTO `communities` (`id`, `name`) VALUES ('30', 'voluptas');
INSERT INTO `communities` (`id`, `name`) VALUES ('74', 'voluptas');
INSERT INTO `communities` (`id`, `name`) VALUES ('83', 'voluptas');
INSERT INTO `communities` (`id`, `name`) VALUES ('13', 'voluptate');
INSERT INTO `communities` (`id`, `name`) VALUES ('1', 'voluptatem');
INSERT INTO `communities` (`id`, `name`) VALUES ('89', 'voluptatem');
INSERT INTO `communities` (`id`, `name`) VALUES ('100', 'voluptatum');

DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities(
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
  
	PRIMARY KEY (user_id, community_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (community_id) REFERENCES communities(id)
);

INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('3', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('4', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('5', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('6', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('7', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('8', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('9', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('10', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('11', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('12', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('13', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('14', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('15', '15');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('16', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('17', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('18', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('19', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('20', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('21', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('22', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('23', '23');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('24', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('25', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('26', '26');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('27', '27');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('28', '28');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('29', '29');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('30', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('31', '31');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('32', '32');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('33', '33');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('34', '34');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('35', '35');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('36', '36');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('37', '37');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('38', '38');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('39', '39');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('40', '40');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('41', '41');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('42', '42');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('43', '43');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('44', '44');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('45', '45');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('46', '46');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('47', '47');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('48', '48');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('49', '49');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('50', '50');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('51', '51');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('52', '52');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('53', '53');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('54', '54');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('55', '55');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('56', '56');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('57', '57');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('58', '58');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('59', '59');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('60', '60');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('61', '61');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('62', '62');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('63', '63');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('64', '64');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('65', '65');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('66', '66');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('67', '67');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('68', '68');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('69', '69');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('70', '70');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('71', '71');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('72', '72');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('73', '73');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('74', '74');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('75', '75');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('76', '76');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('77', '77');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('78', '78');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('79', '79');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('80', '80');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('81', '81');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('82', '82');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('83', '83');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('84', '84');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('85', '85');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('86', '86');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('87', '87');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('88', '88');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('89', '89');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '90');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('91', '91');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('92', '92');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('93', '93');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('94', '94');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('95', '95');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('96', '96');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('97', '97');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('98', '98');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('99', '99');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('100', '100');


DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types(
	id SERIAL PRIMARY KEY,
    name VARCHAR(150),
    created_at DATETIME DEFAULT NOW()
);

INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('1', 'minima', '2009-03-12 13:47:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('2', 'eos', '1988-06-15 05:15:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('3', 'magni', '1975-11-11 14:48:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('4', 'fugiat', '1987-02-20 11:16:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('5', 'eius', '1994-12-29 21:08:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('6', 'soluta', '2001-01-21 00:03:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('7', 'ut', '1971-06-10 06:30:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('8', 'illo', '1977-06-13 18:25:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('9', 'praesentium', '1978-05-21 13:34:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('10', 'earum', '2000-12-02 03:48:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('11', 'quas', '1989-05-04 21:58:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('12', 'aspernatur', '2016-10-11 11:14:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('13', 'rerum', '2017-03-19 23:41:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('14', 'in', '2001-06-21 11:45:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('15', 'est', '1999-05-01 18:10:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('16', 'qui', '2005-01-28 06:08:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('17', 'ut', '2016-05-01 02:00:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('18', 'consequuntur', '1981-08-21 01:23:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('19', 'officiis', '2017-05-21 09:32:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('20', 'sed', '1971-06-06 12:51:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('21', 'animi', '2017-04-21 03:51:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('22', 'sit', '2005-09-13 09:11:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('23', 'similique', '1982-07-09 21:43:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('24', 'quia', '2013-08-24 04:37:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('25', 'facere', '1995-10-25 04:12:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('26', 'a', '1993-12-21 02:51:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('27', 'quasi', '1995-09-07 08:47:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('28', 'quae', '2017-02-27 02:47:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('29', 'fugit', '2002-07-21 06:28:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('30', 'voluptatem', '1985-05-01 17:05:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('31', 'aut', '1986-11-16 04:28:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('32', 'in', '2005-10-10 08:00:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('33', 'voluptatem', '2010-01-02 15:14:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('34', 'inventore', '1988-02-10 14:54:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('35', 'est', '1972-10-03 10:45:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('36', 'autem', '1980-12-25 00:55:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('37', 'nihil', '2016-04-30 13:04:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('38', 'a', '2019-05-21 06:13:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('39', 'minus', '2010-12-01 13:33:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('40', 'eveniet', '1988-04-02 20:33:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('41', 'officiis', '1985-02-12 02:57:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('42', 'adipisci', '2009-05-22 17:45:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('43', 'maxime', '1975-12-20 16:14:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('44', 'corporis', '2009-09-25 02:17:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('45', 'dolores', '1989-05-28 06:04:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('46', 'consequatur', '1985-04-19 23:13:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('47', 'quaerat', '2018-07-24 17:31:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('48', 'quia', '1996-09-12 08:39:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('49', 'est', '1995-08-18 16:40:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('50', 'cupiditate', '1988-04-02 05:48:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('51', 'ut', '1979-05-18 14:40:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('52', 'inventore', '1991-10-03 03:19:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('53', 'culpa', '1976-11-28 13:46:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('54', 'sed', '2017-03-17 22:36:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('55', 'et', '1988-09-26 03:06:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('56', 'dignissimos', '1998-08-13 22:53:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('57', 'aut', '2001-03-31 06:13:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('58', 'dolorum', '1991-12-11 21:16:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('59', 'aperiam', '1992-08-15 06:11:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('60', 'omnis', '2010-02-16 13:09:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('61', 'et', '2012-12-13 15:19:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('62', 'nobis', '1978-09-18 10:56:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('63', 'in', '1992-06-02 03:47:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('64', 'est', '1984-04-10 06:38:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('65', 'quos', '2004-12-30 15:51:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('66', 'modi', '1985-09-02 17:37:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('67', 'in', '1983-01-18 05:59:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('68', 'exercitationem', '1977-11-17 05:48:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('69', 'sequi', '2005-01-24 03:38:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('70', 'itaque', '1976-05-10 07:27:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('71', 'voluptas', '2003-11-17 07:29:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('72', 'officiis', '2004-05-26 22:45:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('73', 'minus', '2007-10-30 16:35:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('74', 'perspiciatis', '2000-11-04 17:08:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('75', 'dolor', '2005-12-30 00:15:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('76', 'nihil', '2003-07-28 10:34:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('77', 'temporibus', '1994-02-09 21:07:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('78', 'et', '1998-10-24 07:42:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('79', 'doloremque', '1974-09-17 04:43:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('80', 'beatae', '2012-07-29 11:40:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('81', 'aspernatur', '1983-08-28 21:49:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('82', 'qui', '1978-11-23 18:26:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('83', 'et', '1991-06-11 23:40:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('84', 'nihil', '1976-01-18 23:54:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('85', 'dolorem', '1982-12-10 04:56:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('86', 'corrupti', '2000-12-10 05:42:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('87', 'laboriosam', '1979-04-12 11:50:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('88', 'maiores', '1995-12-18 10:06:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('89', 'corporis', '2010-06-24 21:40:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('90', 'quos', '2003-11-17 03:44:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('91', 'vero', '1979-01-22 19:20:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('92', 'corrupti', '1988-12-05 18:58:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('93', 'consequatur', '2004-05-09 17:12:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('94', 'magnam', '1977-12-20 15:02:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('95', 'quam', '1974-09-30 08:29:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('96', 'excepturi', '1971-03-10 14:39:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('97', 'voluptatem', '2006-11-10 02:23:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('98', 'iusto', '1999-05-14 23:22:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('99', 'harum', '1974-02-03 04:36:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('100', 'eum', '1975-10-27 13:06:03');


DROP TABLE IF EXISTS media;
CREATE TABLE media(
	id SERIAL PRIMARY KEY,
    media_type_id BIGINT UNSIGNED NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    `size` INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    INDEX (user_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'Voluptatem iste corporis esse rerum omnis quod. Rem qui quaerat numquam dolor porro molestiae laborum.', 'harum', 1258, NULL, '1980-09-07 10:28:35', '1972-11-18 18:02:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '2', 'Nihil velit non distinctio ipsam a reprehenderit et. Vel sed quis quas labore sit.', 'sint', 338824, NULL, '1982-01-09 02:04:56', '2002-02-22 19:27:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '3', 'Voluptatem aspernatur numquam cum et. Beatae quo voluptatum occaecati nihil.', 'eligendi', 0, NULL, '1987-11-20 05:34:12', '2005-05-14 14:50:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Ad quod iusto labore repudiandae voluptatem. Cupiditate sint et beatae tenetur. Reprehenderit laudantium quia quia similique. Odio aspernatur aliquam temporibus praesentium qui qui voluptatem.', 'sint', 147679070, NULL, '2003-03-08 16:43:34', '2015-10-14 09:37:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', '5', 'Et qui quis eos atque. Est nostrum modi dolorem laudantium aut. Ab aut laboriosam aut tempora est vel. Delectus laborum quas temporibus vitae nobis natus et.', 'quia', 239, NULL, '1983-02-09 13:30:27', '2013-05-31 21:54:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', '6', 'Sit harum alias quo repellendus. Iure distinctio sed repellendus. Voluptatem accusamus ut vero aliquid qui enim qui. Eaque libero aut in.', 'omnis', 79572, NULL, '2003-02-21 05:32:31', '1991-04-02 18:43:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '7', '7', 'Maxime non asperiores excepturi suscipit. Fugit minima culpa molestiae fugiat expedita quidem tenetur voluptatem. Ut omnis veniam modi voluptatem tempora facere fuga.', 'sed', 140770880, NULL, '1973-01-05 06:47:18', '1999-06-29 15:29:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', '8', 'Doloribus sunt assumenda dolorum at ipsum modi et nihil. Qui illum ut voluptates ipsa veritatis consequuntur itaque.', 'omnis', 5095872, NULL, '1983-08-18 07:00:23', '1995-07-10 01:11:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '9', '9', 'Quia et corrupti pariatur non ipsum blanditiis ea consequuntur. Aut provident blanditiis iure explicabo est repellendus.', 'molestias', 378841158, NULL, '1975-05-09 05:29:31', '1987-09-09 14:01:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', '10', 'Ratione quia facere eos voluptatibus mollitia. Eligendi sint dicta nesciunt est nihil nobis. Delectus non quia qui adipisci sunt doloribus placeat.', 'ipsam', 1465543, NULL, '1973-12-31 18:43:41', '1986-08-01 10:32:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '11', '11', 'Et eum quasi non sint aut ea. Repellendus molestiae et architecto aut. Explicabo in ut commodi.', 'eaque', 90280, NULL, '2004-04-05 06:27:38', '2002-05-07 09:59:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '12', '12', 'Voluptatem unde et vitae repellendus. Suscipit recusandae iure dolor maiores rem. Natus ipsa voluptas alias omnis vel quisquam explicabo. Placeat recusandae nobis magnam explicabo.', 'pariatur', 9563364, NULL, '2012-03-21 06:07:35', '1992-08-07 01:23:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '13', '13', 'Officia quidem iusto assumenda tempore. Autem quo et pariatur velit. Molestias possimus libero enim autem. Ab est quam optio accusantium.', 'hic', 206760217, NULL, '1976-08-13 03:28:15', '1997-12-13 07:08:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '14', '14', 'Dolor assumenda ratione nesciunt at et. Placeat sunt rem temporibus sed. Voluptas et libero repellat voluptas rerum nobis deleniti. Eveniet et dolores iure.', 'recusandae', 9835449, NULL, '2012-06-06 23:24:59', '1973-05-23 05:25:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '15', '15', 'Officiis eveniet incidunt aut incidunt qui incidunt. Eos ut cupiditate placeat cupiditate id fuga. Eius quibusdam quae cum dolore occaecati eaque facere. Vero et voluptas illo ipsa laudantium.', 'suscipit', 779464964, NULL, '2009-02-12 07:31:59', '1980-10-21 18:51:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '16', '16', 'Libero est et nam sit asperiores culpa. Expedita totam libero doloribus et libero totam. Est corrupti sit natus sed sequi modi.', 'qui', 903159164, NULL, '2004-10-12 18:06:32', '2005-01-18 08:15:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '17', '17', 'Sunt quae autem autem quasi cumque. Quia iste tempore veniam accusamus.', 'sequi', 22718264, NULL, '2015-09-15 16:46:37', '1980-03-11 11:06:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '18', '18', 'Nostrum ipsam voluptas ducimus est nobis numquam vero. Aut voluptatibus blanditiis id aliquid dolore. Molestiae delectus et debitis. Enim dolor dignissimos consequatur praesentium.', 'quis', 43323568, NULL, '1997-06-10 19:07:03', '1972-07-02 18:30:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '19', '19', 'Exercitationem sequi sunt nemo sequi praesentium fugit. Nostrum aut ad dolores nihil sunt architecto. Ut maxime amet dignissimos dicta. Repudiandae quia voluptatum earum ab qui.', 'delectus', 5, NULL, '1990-01-31 22:09:07', '2001-10-17 01:03:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '20', '20', 'Dolorem facilis quae sunt culpa minus rerum. Eaque animi natus et numquam voluptas. Qui accusantium qui quasi. Illo vero eum aliquam ipsum vero.', 'odio', 21, NULL, '1979-02-19 07:10:44', '1978-12-07 20:50:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '21', '21', 'Quisquam ut inventore dolor in amet repellat magni. Consectetur pariatur iusto ea laboriosam architecto amet veniam. Consequatur aliquid recusandae ea enim est quam illo qui.', 'qui', 68, NULL, '2018-10-02 19:44:04', '2018-03-17 15:48:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '22', '22', 'Voluptatum modi iure libero deserunt voluptatem asperiores. A quis voluptatem ipsam modi quod. Illum aut expedita nihil sint ipsa. Reiciendis reiciendis totam rem ut modi itaque voluptas.', 'cumque', 0, NULL, '2003-01-13 05:44:10', '1977-10-10 08:47:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '23', '23', 'Qui odio voluptates sunt amet repellendus sint. Qui enim fugit maxime optio illo eius ducimus. Sit iusto eum sint aut. In est qui consequuntur tenetur labore voluptatibus.', 'saepe', 8, NULL, '2003-11-23 02:30:30', '1990-08-04 11:32:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '24', '24', 'Mollitia quia omnis tenetur adipisci ipsam. Itaque at consequatur culpa illum consequatur debitis sit. Repellendus explicabo magnam cum voluptatem dolores eius est. Ut aut aliquam et itaque commodi atque delectus ratione. Blanditiis minus blanditiis magnam reiciendis sit pariatur.', 'nam', 0, NULL, '1996-07-16 03:06:08', '1996-04-27 06:08:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '25', '25', 'Non quia commodi sed ut sunt dolorem iusto. Dolores temporibus soluta delectus ut. Adipisci eligendi amet consequuntur iure maiores ab ratione.', 'ratione', 245983, NULL, '1991-02-12 15:10:55', '1994-04-21 05:17:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '26', '26', 'Reprehenderit consectetur autem nisi. Quam id in ut et.', 'iusto', 4307, NULL, '2013-05-14 05:50:54', '2015-01-29 16:19:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '27', '27', 'Dolore voluptate nemo quidem. Id dolorem corporis aut sint corrupti quasi enim. Rerum vero molestias id eaque. Quos quam delectus provident officiis qui incidunt. Perferendis asperiores facilis quasi occaecati a quibusdam.', 'et', 34, NULL, '1983-04-07 05:09:14', '1976-11-12 08:34:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '28', '28', 'Et unde impedit quod aliquid quam quia. Voluptate voluptatum voluptatem nihil possimus voluptate dicta incidunt consequatur. Est corrupti nulla animi dolor. Eligendi aut soluta sit non enim.', 'eos', 0, NULL, '1971-09-09 11:31:07', '1979-07-17 10:40:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '29', '29', 'Quasi in dolore omnis odio. Saepe dolorem porro neque aut officia in quis. Porro dolorem consequatur ratione autem voluptas dolor et. Ut dolore magnam ea sint distinctio.', 'voluptas', 35, NULL, '1974-12-18 08:52:39', '2016-12-28 10:24:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '30', '30', 'Quia aut aliquam quia eos. Eveniet voluptatem harum sed dicta autem.', 'voluptatem', 0, NULL, '1994-05-04 17:49:21', '1985-06-18 18:23:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '31', '31', 'Repellat ea est a saepe temporibus quam. Nemo labore tempora odio. Sed voluptas velit quidem dolor. Laboriosam aut dolorem laudantium sit sapiente vel et. Perspiciatis rerum sunt est omnis nobis quos aspernatur.', 'tempore', 3994, NULL, '1971-12-04 08:32:26', '1984-01-06 10:41:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '32', '32', 'Alias culpa doloremque nam quia ducimus aut autem. Libero dolores labore non aut. Alias et quisquam qui laboriosam.', 'vel', 960, NULL, '2007-07-26 22:22:31', '1979-06-03 11:22:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '33', '33', 'Aliquid laborum accusantium voluptatem id consequuntur. Deserunt culpa id ex tempora. Exercitationem et molestias soluta nulla assumenda perspiciatis ab. A qui veniam consequatur odio blanditiis delectus.', 'et', 9, NULL, '2015-05-17 09:14:42', '1987-05-08 02:49:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '34', '34', 'Minus quia sed explicabo aut et. Ut voluptas optio excepturi consequuntur. Illo et perspiciatis nisi vitae.', 'velit', 669560009, NULL, '1975-06-25 14:21:53', '1995-01-19 18:06:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '35', '35', 'Incidunt odit rem repellat praesentium ratione. Ut pariatur dolores sequi officiis. Qui hic pariatur omnis corrupti omnis est.', 'architecto', 109, NULL, '2018-03-06 09:49:59', '2013-11-30 10:46:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '36', '36', 'Unde natus cupiditate enim corrupti minima qui dolorem est. Nesciunt nobis enim assumenda velit dicta non et. Praesentium sunt sequi et est qui amet dolore. Voluptates enim omnis dolorem et molestiae.', 'quas', 3132, NULL, '1980-04-14 09:05:05', '1985-04-18 16:31:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '37', '37', 'Eum est accusantium provident nisi consequatur. Recusandae dolor est saepe ipsum occaecati quod hic vel. Placeat praesentium rerum ipsum magnam ut id nam temporibus. Ipsa velit vero libero tempora dolorum modi sed. Pariatur ratione veniam eveniet laborum.', 'voluptas', 0, NULL, '2011-10-22 10:56:31', '1972-02-27 13:34:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '38', '38', 'Sunt autem veniam et quo. Et error rerum maxime ut recusandae. Nihil omnis beatae provident. Ipsam enim aliquam repellat voluptatum quibusdam modi saepe non.', 'aperiam', 906695613, NULL, '1998-07-18 17:57:25', '1987-07-23 02:35:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '39', '39', 'Saepe quaerat ad debitis exercitationem occaecati. Autem assumenda quae nemo cum quaerat aut reiciendis. Saepe nostrum et qui eius est quibusdam perferendis qui.', 'at', 10, NULL, '2013-02-01 12:58:35', '2013-06-04 19:20:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '40', '40', 'Qui et vero sint ullam neque aut. Ullam asperiores dolor expedita dolor. Eum ipsam omnis expedita dolores.', 'delectus', 7653451, NULL, '1994-05-20 17:02:09', '2014-06-18 20:51:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '41', '41', 'Omnis laborum porro aliquam nulla qui aut. Illum quae veniam temporibus. Aperiam tempore natus aliquam ab.', 'tempora', 0, NULL, '2009-10-05 10:32:35', '2009-11-13 11:45:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '42', '42', 'Est sed consequatur blanditiis ut quis. Error facilis reiciendis ratione et nihil quam sit. Asperiores aut facere rerum voluptatem qui voluptatem.', 'doloremque', 903850691, NULL, '1989-11-05 04:33:10', '1999-07-20 21:00:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '43', '43', 'Doloribus aliquid est quasi ea. Voluptate et reiciendis non molestiae et cum. Sed sit tenetur quo eum et doloribus quasi est. Sint cupiditate mollitia nesciunt.', 'quis', 3836, NULL, '1978-07-26 03:46:35', '1971-05-20 08:23:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '44', '44', 'Modi aperiam eos exercitationem voluptas sit omnis. Voluptatem autem laudantium et numquam facilis. Ullam et repudiandae vero hic. Rem autem natus voluptatibus esse.', 'et', 42038807, NULL, '1997-03-18 13:55:32', '2012-06-12 01:13:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '45', '45', 'Et ut aliquid praesentium ullam. Accusantium rerum facere saepe culpa reiciendis.', 'magnam', 8595, NULL, '2014-07-05 14:27:02', '1990-03-29 06:14:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '46', '46', 'Vero veniam in totam aut. Maiores beatae et qui perspiciatis tempore et voluptas. Aut dicta sit fuga fuga est. Harum reiciendis sed culpa necessitatibus quia aperiam.', 'omnis', 3499310, NULL, '2008-05-06 19:11:38', '1995-06-06 15:04:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '47', '47', 'Qui non ut provident id fuga voluptas quaerat. Natus ut ducimus debitis voluptas vero eum laudantium. Eius cupiditate placeat voluptatem sint repellat.', 'tempora', 3564039, NULL, '1994-12-17 22:31:14', '2000-10-10 09:02:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '48', '48', 'Repellendus expedita eos ipsum illum laudantium mollitia quos suscipit. Blanditiis dolorem ut qui soluta eum sunt. Sit necessitatibus est autem perspiciatis. Odit labore consequatur et aliquid rerum consequatur et.', 'ut', 47961, NULL, '2005-12-14 15:39:50', '1990-04-18 19:40:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '49', '49', 'Amet consequatur sit velit vel illo accusantium. Qui quo dolorem rerum veritatis id cupiditate. Ex ea quia eos ut.', 'iusto', 901, NULL, '1977-09-30 12:51:14', '2007-08-11 14:13:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '50', '50', 'Aut laborum amet omnis in. Nostrum commodi aut possimus distinctio doloremque repudiandae beatae. Explicabo et dolor dolorem dignissimos. Inventore illum fuga cupiditate amet praesentium.', 'fugit', 5223, NULL, '2014-11-19 08:44:48', '2019-10-22 07:59:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '51', '51', 'Aut vel accusamus qui porro quia. Praesentium ipsum rerum totam quae qui ratione inventore atque. A eos temporibus sunt dolore. Consectetur quo fugit deleniti nam accusamus.', 'animi', 2, NULL, '2007-02-07 10:02:22', '2014-08-09 13:13:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '52', '52', 'Nihil ipsum esse est et numquam nisi. Sit est ea id perferendis. Temporibus distinctio incidunt minima perferendis sint quo. Consequatur harum non velit repellendus adipisci.', 'voluptates', 6, NULL, '1985-07-12 11:10:46', '1980-01-30 16:21:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '53', '53', 'Distinctio est omnis quis itaque. Molestiae quo rerum nam porro pariatur architecto. Error nemo voluptatem dolorum labore unde dolorem. Nihil sint sed delectus hic.', 'repellat', 7, NULL, '1987-12-09 13:18:19', '2018-07-14 22:40:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '54', '54', 'Tenetur magni quibusdam laudantium repellendus impedit explicabo. Eligendi occaecati ut facere optio sequi ratione. Molestiae qui velit asperiores eveniet sed voluptatum.', 'voluptas', 46893, NULL, '1988-04-21 20:37:20', '2012-04-23 11:04:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '55', '55', 'Ab nobis qui saepe illo ut. Non similique ut molestiae molestias voluptate dolorem. Adipisci quis iure aut velit nesciunt ducimus. Cupiditate explicabo occaecati illo voluptatem libero itaque.', 'unde', 7, NULL, '1997-03-29 07:28:21', '2001-03-18 10:54:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '56', '56', 'Labore eum illum corrupti. Recusandae placeat facilis labore modi. Provident quod voluptas ut assumenda.', 'voluptates', 12729000, NULL, '1982-10-25 17:16:48', '1988-03-02 16:09:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '57', '57', 'Autem sapiente veritatis saepe numquam libero. Unde dolor aliquam sint in nesciunt enim. Harum non earum iste eum nam dolores. Omnis aliquid amet porro similique.', 'consequatur', 4127, NULL, '2003-08-22 05:39:22', '2008-10-28 03:37:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '58', '58', 'Non quisquam soluta in tempora excepturi aperiam. Esse explicabo magnam aut. Est eum deserunt nisi placeat sapiente alias.', 'voluptas', 53, NULL, '1997-08-19 04:37:46', '2005-09-09 22:28:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '59', '59', 'Aut perspiciatis et quasi illo excepturi. Velit incidunt consequatur culpa aut in. Consequatur voluptatem recusandae voluptates et quasi et. Deleniti velit reiciendis optio.', 'nihil', 4, NULL, '1988-07-12 12:28:21', '1973-03-14 02:14:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '60', '60', 'Dolores consequatur ipsa unde inventore magnam mollitia. Eum quaerat illum sed voluptatum eaque. Ipsum voluptatem quo iure rem placeat ullam quam. Iste ipsum facere molestias aut iste numquam qui.', 'blanditiis', 548, NULL, '1998-04-07 08:12:16', '1971-05-04 13:09:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '61', '61', 'Vitae et provident eum quo quos praesentium. Veritatis maiores nihil inventore illum enim culpa. Est odio veritatis natus porro maxime.', 'sint', 982, NULL, '1981-12-09 04:49:15', '1986-02-04 17:37:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '62', '62', 'Ipsa repellat ex commodi nihil est eveniet. Et aliquid totam exercitationem. Non deserunt et quisquam similique et dolor illum. Culpa sunt quibusdam animi unde.', 'est', 3709, NULL, '2017-12-02 14:28:13', '1998-04-24 09:18:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '63', '63', 'Corrupti qui molestias voluptas laborum iste saepe minima. Nobis adipisci similique porro laudantium enim. Praesentium unde et numquam porro amet tenetur.', 'labore', 52, NULL, '1993-03-10 20:36:49', '1988-02-21 00:30:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '64', '64', 'Quia numquam est et. Odit perspiciatis explicabo fuga mollitia. Et quas voluptatem dolor quo ducimus. Sit architecto fuga excepturi eos et et unde. Exercitationem corrupti fugit magnam labore optio.', 'nam', 424, NULL, '1990-05-10 12:56:37', '1996-04-13 07:52:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '65', '65', 'Et quia dolorem perspiciatis quos praesentium. Soluta nihil totam et consequuntur. Qui a fugiat perferendis dolorem eos qui cupiditate.', 'necessitatibus', 4089829, NULL, '1976-01-10 11:44:32', '2000-05-31 22:03:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '66', '66', 'Est consequatur voluptate error et. Blanditiis molestiae voluptatibus veniam odio. Aperiam deleniti maiores assumenda voluptatibus.', 'qui', 91929, NULL, '2013-07-03 18:52:37', '1978-09-08 17:58:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '67', '67', 'Ipsum necessitatibus quos fugit id voluptatem sit. Enim ad et totam porro. Facere in animi quisquam eos unde. Soluta vero et alias.', 'enim', 1, NULL, '2001-01-22 07:07:32', '1988-03-10 21:06:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '68', '68', 'Id rem aut illo aliquid. Quisquam reiciendis rerum quaerat quod. Voluptates quisquam dolor et quo laudantium omnis esse.', 'sunt', 972554103, NULL, '2004-08-04 23:28:18', '1991-05-03 10:44:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '69', '69', 'Sit et fuga ipsam amet vel occaecati quia. Veniam quam iste quis eaque est. Ab iusto adipisci eaque cum voluptatem consectetur similique.', 'suscipit', 7138, NULL, '1986-09-25 22:25:52', '1996-07-14 16:33:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '70', '70', 'Et omnis ut in. Ex quisquam debitis error qui. Aspernatur molestias similique et et. Reprehenderit saepe nulla porro perferendis. Voluptatem rerum cupiditate provident iste in.', 'cupiditate', 6, NULL, '2009-08-07 15:20:51', '2002-06-21 01:13:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '71', '71', 'Vel ex ut fugiat qui laudantium natus explicabo repellat. Maxime praesentium unde accusantium enim dolor rerum sint. Qui mollitia consequuntur molestiae doloribus quia molestias quia. Quo ad velit quam non perspiciatis occaecati quas.', 'ullam', 57, NULL, '1986-10-01 16:57:33', '1994-03-24 12:41:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '72', '72', 'Rerum dolorem est repellendus asperiores laborum fugiat. Et assumenda tempora aut rerum atque. Blanditiis veritatis asperiores et non optio doloribus.', 'quam', 0, NULL, '1970-05-03 11:55:41', '1996-11-25 04:27:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '73', '73', 'Dolorem culpa quia voluptates. Reiciendis quia neque et laudantium. Blanditiis magni aspernatur et molestiae. Omnis omnis soluta neque corrupti nulla laborum non.', 'sit', 0, NULL, '1981-11-06 16:33:28', '2010-07-02 05:47:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '74', '74', 'Sed omnis omnis ut veritatis qui aliquid. Saepe quod modi illum fugit. Dolor quod nemo autem. Non consectetur ipsum sed maxime et corporis odio. Non officiis voluptates velit.', 'fugit', 840458, NULL, '1998-10-12 19:49:33', '1990-10-06 10:10:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '75', '75', 'Velit sunt fuga rerum architecto. Aut provident repellendus quia esse. Odio debitis est asperiores voluptatem nam qui quia laudantium. Quis repellendus sint est repudiandae sit at. Fugit quas ut et.', 'harum', 2, NULL, '2016-11-12 10:27:16', '1988-05-14 03:53:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '76', '76', 'Consequatur cumque sit blanditiis praesentium praesentium. Dolore hic delectus iure eligendi recusandae. Architecto expedita dicta explicabo sapiente quia aperiam doloremque. Accusantium consequatur quos deleniti consequuntur.', 'laboriosam', 378371, NULL, '1973-05-22 15:13:08', '2010-02-23 06:24:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '77', '77', 'Molestiae unde atque sequi sit. Cum voluptates ab molestias explicabo est consequuntur. Incidunt velit dolor qui. Optio incidunt quia est distinctio et.', 'et', 8, NULL, '2000-05-06 20:30:45', '1982-11-27 01:31:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '78', '78', 'In mollitia deserunt voluptatem. Ratione aut at et autem illum.', 'nihil', 1, NULL, '1974-12-26 22:44:03', '1986-02-08 23:55:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '79', '79', 'Sapiente molestiae architecto doloremque aut consequatur quam. Nihil nemo quia harum amet ratione quidem quis. Omnis odit nesciunt rem aut id est mollitia. Beatae porro ab eius et nemo magnam. Voluptates rerum hic quam suscipit fugit architecto sapiente.', 'ut', 4190147, NULL, '2015-05-26 23:18:34', '1979-04-20 19:04:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '80', '80', 'Itaque nihil qui minima sit dolor sunt saepe. Deleniti inventore doloremque est non nemo officia. Vero nobis quia corporis sunt sequi. Modi numquam quia voluptate odit. Iusto id minus amet quisquam explicabo.', 'voluptatem', 257320215, NULL, '1976-04-24 13:54:55', '2013-02-20 16:48:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '81', '81', 'Rerum fugit illo dolor ut est debitis sit. Earum velit qui sapiente temporibus ut sit cum. Enim quo minima ut et consequatur laboriosam sint. Sed omnis rerum sed.', 'consequuntur', 972714620, NULL, '1973-01-09 22:12:17', '1976-01-07 16:47:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '82', '82', 'Enim quo illo voluptatibus perferendis qui molestiae aspernatur. Nisi amet dolores ut iste molestiae vel.', 'perferendis', 685409, NULL, '2013-04-19 18:50:23', '1989-01-03 04:34:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '83', '83', 'Maiores laudantium nostrum consequatur expedita qui ducimus blanditiis. Hic ut et rem doloremque quis atque. Aut voluptatem autem deserunt eligendi. Iusto numquam est maxime sint perferendis totam. Expedita ullam non porro.', 'adipisci', 10656, NULL, '1988-01-23 21:16:50', '2018-01-23 04:51:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '84', '84', 'Nisi sit quia eos dolor sint repudiandae sunt. Dolor id quam qui rerum voluptatem. Natus qui voluptate voluptatem est. Soluta voluptatem qui consequatur non aperiam.', 'non', 7731, NULL, '1976-01-14 09:47:12', '1987-01-16 03:31:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '85', '85', 'Expedita corporis quidem voluptas aut omnis iste. Corrupti eaque nam tempore consequatur est natus. Laborum ut omnis corporis nostrum voluptatum.', 'a', 6277, NULL, '1987-03-27 10:42:57', '2009-02-25 00:53:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '86', '86', 'Error hic ipsa inventore omnis magni quo. Nobis id pariatur est et exercitationem. Dolores laborum sunt fuga commodi enim rem fuga iusto.', 'autem', 314367712, NULL, '2011-10-04 13:07:03', '1973-02-05 20:54:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '87', '87', 'Occaecati minima corporis placeat. Ad aspernatur quo suscipit laboriosam facere ut nostrum. Distinctio velit sed ea provident.', 'molestiae', 6, NULL, '2014-05-10 11:54:30', '2007-06-19 09:55:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '88', '88', 'Ad dolore dolorem eos vitae impedit veniam possimus nam. Et eum sint reiciendis quia voluptas voluptatem rem omnis. Sunt voluptatem quas omnis quo qui est. Unde numquam quia dolorem animi totam laboriosam.', 'repellat', 615, NULL, '1972-05-21 10:07:58', '2002-02-11 15:07:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '89', '89', 'Commodi rem sed tempora sapiente. Accusantium est ab error quod id omnis autem. Iste dolorum assumenda sunt quo repellat.', 'sint', 626, NULL, '1993-05-23 04:40:58', '1973-10-24 05:20:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '90', '90', 'Quas necessitatibus aliquam harum enim qui nostrum quo recusandae. Molestiae ad consectetur rem commodi ipsum.', 'rerum', 8154, NULL, '2008-08-05 12:36:40', '1985-07-03 13:28:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '91', '91', 'Illo natus non et ad aliquam. Explicabo aspernatur sunt odio cumque.', 'corrupti', 0, NULL, '1995-01-13 19:32:48', '1991-01-19 20:09:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '92', '92', 'Consectetur aspernatur culpa ut dolor dolorem iusto eius. Optio reprehenderit quidem omnis et qui recusandae. Autem pariatur id minus dolore dolor ut. Asperiores fugiat debitis saepe et veniam numquam.', 'nihil', 8, NULL, '1990-07-02 14:58:59', '1979-05-12 12:00:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '93', '93', 'Nemo aspernatur qui debitis sit. Quos possimus aperiam magni natus alias non accusamus. Illum sed adipisci nam ut quam. Eum ut ut qui eos rem eveniet.', 'voluptatem', 1051123, NULL, '2017-08-25 13:41:40', '1971-08-06 12:19:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '94', '94', 'Qui est perferendis cumque consequuntur. Suscipit laborum magnam repudiandae laboriosam autem. Sit porro magni vel in minus sunt.', 'eligendi', 14518, NULL, '1970-09-20 20:00:52', '2008-04-16 09:04:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '95', '95', 'Adipisci voluptatem enim doloremque soluta aspernatur ratione omnis. Accusantium ratione amet voluptatem id est. Aut esse ratione natus nam velit. Non id rem dignissimos dolores eaque quia. Dolorem nisi eum qui mollitia amet modi.', 'et', 587, NULL, '2018-04-06 14:24:49', '2010-07-18 04:30:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '96', '96', 'Non in nulla corrupti dolor nisi culpa beatae eos. Occaecati ut quisquam et assumenda. Aperiam sunt a sint dolor.', 'pariatur', 60291, NULL, '1994-03-27 08:09:05', '1988-09-30 09:38:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '97', '97', 'Voluptatem est voluptate molestiae nobis harum. Laboriosam illo voluptates eum est. Nostrum laboriosam inventore et. Officia et sequi et laudantium similique eos sit.', 'ratione', 7608479, NULL, '1974-11-15 20:35:36', '2004-05-23 16:10:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '98', '98', 'Sint unde omnis ut quasi fuga et aut praesentium. Est fugit et fugit velit ex dolorem voluptatem. Repudiandae ut unde ea molestias accusamus modi sed dignissimos.', 'minima', 65, NULL, '1972-12-02 12:42:21', '1983-09-22 17:48:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '99', '99', 'Sunt architecto autem quae et sit. Est aut et quia voluptates. Necessitatibus autem qui animi voluptatem. Excepturi est veritatis mollitia. Aliquid voluptatibus veritatis quos dicta eum qui.', 'enim', 111, NULL, '1992-09-15 15:02:26', '2000-03-10 20:46:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '100', '100', 'Repudiandae animi reprehenderit repellendus laudantium occaecati occaecati et. Eaque fugiat est aperiam qui aliquam laudantium. Qui quis eaque dolore corrupti.', 'dolor', 24363, NULL, '2007-01-11 00:08:54', '1973-02-06 18:45:24');


DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
	user_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED NULL,
    hometown VARCHAR(100),
    created_at DATETIME default NOW(),
    
    FOREIGN KEY (photo_id) REFERENCES media(id)
);

alter table `profiles`
	add constraint fk_user_id
	foreign key (user_id) references users(id)
	on update cascade
	on delete restrict
;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('1', NULL, '2008-08-08', '1', NULL, '1987-08-12 20:40:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('2', NULL, '2007-03-28', '2', NULL, '1985-08-02 07:42:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('3', NULL, '1990-08-02', '3', NULL, '1995-05-27 11:35:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('4', NULL, '1972-06-08', '4', NULL, '2007-07-01 14:57:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('5', NULL, '1986-03-10', '5', NULL, '2018-04-24 09:01:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('6', NULL, '2011-05-08', '6', NULL, '1972-01-17 14:23:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('7', NULL, '2018-12-07', '7', NULL, '1989-12-07 00:25:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('8', NULL, '2011-05-15', '8', NULL, '2009-09-29 22:25:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('9', NULL, '2006-03-06', '9', NULL, '2007-05-26 14:46:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('10', NULL, '1988-03-05', '10', NULL, '1974-05-06 20:46:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('11', NULL, '2005-03-05', '11', NULL, '2011-05-27 08:08:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('12', NULL, '2013-08-10', '12', NULL, '1999-02-23 07:26:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('13', NULL, '1982-03-16', '13', NULL, '2000-08-02 04:26:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('14', NULL, '1973-12-04', '14', NULL, '2010-06-20 16:02:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('15', NULL, '2000-05-17', '15', NULL, '2000-12-12 14:32:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('16', NULL, '1993-07-29', '16', NULL, '2016-02-19 15:03:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('17', NULL, '1997-04-02', '17', NULL, '2019-03-09 15:02:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('18', NULL, '2005-08-29', '18', NULL, '1994-03-29 06:05:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('19', NULL, '2015-06-23', '19', NULL, '1981-04-30 20:21:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('20', NULL, '1992-12-29', '20', NULL, '2000-06-29 22:04:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('21', NULL, '2010-08-03', '21', NULL, '1986-09-14 13:39:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('22', NULL, '1972-09-28', '22', NULL, '2012-09-02 02:29:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('23', NULL, '1975-05-07', '23', NULL, '1976-11-09 21:16:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('24', NULL, '1975-02-12', '24', NULL, '2016-04-24 12:22:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('25', NULL, '1974-01-06', '25', NULL, '2008-03-07 06:10:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('26', NULL, '1995-07-07', '26', NULL, '1998-08-08 09:23:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('27', NULL, '1975-10-18', '27', NULL, '1999-12-02 03:30:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('28', NULL, '2009-02-09', '28', NULL, '2005-01-27 15:53:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('29', NULL, '1980-08-29', '29', NULL, '2013-07-07 07:01:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('30', NULL, '1980-10-24', '30', NULL, '2005-07-24 12:50:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('31', NULL, '1992-06-09', '31', NULL, '1987-12-01 11:24:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('32', NULL, '2004-04-19', '32', NULL, '1993-02-26 11:20:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('33', NULL, '1972-10-25', '33', NULL, '1990-04-06 11:37:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('34', NULL, '1977-01-02', '34', NULL, '2005-09-22 09:27:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('35', NULL, '1970-11-28', '35', NULL, '1976-02-08 17:53:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('36', NULL, '2015-08-09', '36', NULL, '1984-11-04 04:49:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('37', NULL, '1986-09-29', '37', NULL, '1995-03-22 19:15:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('38', NULL, '1974-11-13', '38', NULL, '2007-07-09 00:48:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('39', NULL, '1988-02-20', '39', NULL, '1997-06-26 08:20:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('40', NULL, '2005-07-11', '40', NULL, '2011-12-03 00:34:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('41', NULL, '1974-06-30', '41', NULL, '1997-08-21 08:27:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('42', NULL, '1970-09-20', '42', NULL, '2000-02-11 01:51:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('43', NULL, '1986-04-22', '43', NULL, '1979-12-23 09:14:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('44', NULL, '1973-01-29', '44', NULL, '2004-12-14 07:13:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('45', NULL, '1992-10-21', '45', NULL, '2005-11-13 17:55:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('46', NULL, '1982-09-24', '46', NULL, '1973-01-04 17:17:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('47', NULL, '1983-03-22', '47', NULL, '1993-03-05 03:02:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('48', NULL, '2005-01-13', '48', NULL, '1981-07-11 07:38:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('49', NULL, '1991-11-05', '49', NULL, '1982-08-18 05:16:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('50', NULL, '2005-01-09', '50', NULL, '1990-01-04 23:24:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('51', NULL, '1975-05-05', '51', NULL, '1974-05-19 16:24:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('52', NULL, '2018-07-04', '52', NULL, '2004-10-09 13:15:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('53', NULL, '1985-07-06', '53', NULL, '2009-06-04 07:15:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('54', NULL, '2014-09-05', '54', NULL, '2013-03-04 08:41:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('55', NULL, '1985-05-29', '55', NULL, '2000-12-10 18:03:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('56', NULL, '2010-09-09', '56', NULL, '1975-08-31 11:21:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('57', NULL, '2010-12-05', '57', NULL, '2017-08-27 06:24:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('58', NULL, '1981-08-05', '58', NULL, '1984-06-10 04:08:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('59', NULL, '2018-05-12', '59', NULL, '1995-08-06 19:27:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('60', NULL, '2019-09-29', '60', NULL, '1977-06-10 06:38:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('61', NULL, '2005-04-14', '61', NULL, '2015-01-25 07:32:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('62', NULL, '1977-03-05', '62', NULL, '1971-11-13 08:54:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('63', NULL, '2000-01-04', '63', NULL, '2014-04-12 04:57:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('64', NULL, '1979-08-18', '64', NULL, '2017-03-17 15:55:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('65', NULL, '2005-07-26', '65', NULL, '2014-02-14 19:45:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('66', NULL, '1970-03-05', '66', NULL, '2013-06-04 16:34:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('67', NULL, '1981-02-18', '67', NULL, '1980-12-10 12:53:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('68', NULL, '1979-04-16', '68', NULL, '1998-03-20 07:48:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('69', NULL, '2005-01-08', '69', NULL, '1975-05-10 08:49:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('70', NULL, '2014-01-07', '70', NULL, '2000-09-25 10:43:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('71', NULL, '2017-11-24', '71', NULL, '2013-09-26 18:28:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('72', NULL, '1999-07-08', '72', NULL, '2005-12-06 05:50:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('73', NULL, '2003-08-28', '73', NULL, '2005-10-07 14:40:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('74', NULL, '2010-08-14', '74', NULL, '1983-04-04 18:02:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('75', NULL, '1977-05-19', '75', NULL, '2003-01-14 02:31:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('76', NULL, '2019-10-05', '76', NULL, '1973-04-20 22:04:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('77', NULL, '2013-01-26', '77', NULL, '2007-09-15 08:05:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('78', NULL, '1972-01-12', '78', NULL, '2006-04-09 18:38:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('79', NULL, '1973-05-28', '79', NULL, '1987-03-18 05:01:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('80', NULL, '2009-02-23', '80', NULL, '1999-09-12 14:58:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('81', NULL, '1979-07-22', '81', NULL, '1999-01-16 16:38:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('82', NULL, '2008-10-10', '82', NULL, '1974-12-02 08:07:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('83', NULL, '1982-11-09', '83', NULL, '1994-05-08 20:40:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('84', NULL, '1975-06-30', '84', NULL, '1983-04-26 02:39:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('85', NULL, '1995-04-20', '85', NULL, '2017-07-03 04:34:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('86', NULL, '1972-05-26', '86', NULL, '1988-01-08 20:04:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('87', NULL, '2018-06-10', '87', NULL, '1971-01-04 04:16:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('88', NULL, '2019-08-31', '88', NULL, '1977-02-05 20:14:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('89', NULL, '1982-05-12', '89', NULL, '2001-06-17 09:31:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('90', NULL, '1971-02-05', '90', NULL, '1988-02-05 17:55:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('91', NULL, '2019-01-08', '91', NULL, '1992-12-04 08:32:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('92', NULL, '1997-11-22', '92', NULL, '2010-05-09 20:51:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('93', NULL, '2018-07-07', '93', NULL, '1988-12-03 00:40:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('94', NULL, '2004-06-14', '94', NULL, '2003-06-29 06:47:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('95', NULL, '1999-10-27', '95', NULL, '1988-07-14 18:50:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('96', NULL, '1981-01-25', '96', NULL, '2002-11-15 05:17:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('97', NULL, '2019-07-17', '97', NULL, '1974-12-27 12:02:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('98', NULL, '2015-05-22', '98', NULL, '2016-05-18 16:08:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('99', NULL, '2008-05-30', '99', NULL, '2000-05-24 15:22:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `hometown`, `created_at`) VALUES ('100', NULL, '1977-10-11', '100', NULL, '1971-09-18 14:49:24');


DROP TABLE IF EXISTS likes;
CREATE TABLE likes(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);

INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('1', '1', '1', '1999-09-07 09:01:58');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('2', '2', '2', '2007-03-27 18:59:38');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('3', '3', '3', '1973-12-14 12:24:36');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('4', '4', '4', '1970-01-06 00:38:47');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('5', '5', '5', '2008-05-02 05:05:22');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('6', '6', '6', '1971-12-09 04:17:38');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('7', '7', '7', '2011-01-16 21:56:57');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('8', '8', '8', '2017-11-07 02:02:02');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('9', '9', '9', '2017-09-22 00:21:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('10', '10', '10', '1993-02-07 06:47:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('11', '11', '11', '2016-09-03 05:16:40');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('12', '12', '12', '1997-04-08 18:49:46');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('13', '13', '13', '1978-04-15 05:33:05');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('14', '14', '14', '1994-07-16 23:49:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('15', '15', '15', '2018-11-10 08:19:29');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('16', '16', '16', '1973-03-04 07:57:29');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('17', '17', '17', '1990-02-04 19:07:15');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('18', '18', '18', '1990-01-22 18:45:31');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('19', '19', '19', '1979-09-02 19:57:46');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('20', '20', '20', '2005-06-23 04:44:47');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('21', '21', '21', '1983-10-01 16:56:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('22', '22', '22', '2017-01-08 17:21:06');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('23', '23', '23', '2008-04-15 04:27:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('24', '24', '24', '1988-11-07 14:19:33');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('25', '25', '25', '1995-07-25 12:25:59');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('26', '26', '26', '2000-01-28 19:02:27');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('27', '27', '27', '1981-01-18 22:50:08');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('28', '28', '28', '1978-01-30 23:21:42');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('29', '29', '29', '1989-09-09 00:37:26');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('30', '30', '30', '1976-04-30 19:07:03');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('31', '31', '31', '1996-05-22 16:28:04');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('32', '32', '32', '2001-11-11 20:45:33');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('33', '33', '33', '1993-03-11 23:31:47');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('34', '34', '34', '1999-08-20 09:47:02');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('35', '35', '35', '1989-09-07 22:59:58');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('36', '36', '36', '2011-04-02 03:38:11');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('37', '37', '37', '2014-02-10 13:53:30');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('38', '38', '38', '2011-11-03 22:57:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('39', '39', '39', '2014-02-14 21:51:49');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('40', '40', '40', '1980-07-30 01:27:24');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('41', '41', '41', '2002-12-05 22:10:32');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('42', '42', '42', '1989-10-03 04:36:34');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('43', '43', '43', '2015-02-28 09:00:37');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('44', '44', '44', '1979-09-09 14:05:02');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('45', '45', '45', '2009-05-29 05:34:57');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('46', '46', '46', '2015-11-13 09:07:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('47', '47', '47', '2000-07-28 17:37:39');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('48', '48', '48', '2004-08-02 06:21:15');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('49', '49', '49', '1974-06-10 20:10:17');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('50', '50', '50', '2014-08-21 01:57:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('51', '51', '51', '1971-07-18 16:26:08');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('52', '52', '52', '1976-02-13 01:38:29');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('53', '53', '53', '2015-01-23 05:12:15');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('54', '54', '54', '1989-07-19 22:51:13');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('55', '55', '55', '2016-09-08 07:43:55');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('56', '56', '56', '1999-10-21 02:25:07');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('57', '57', '57', '1979-12-17 00:51:56');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('58', '58', '58', '1975-05-22 11:17:03');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('59', '59', '59', '2007-04-23 19:06:07');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('60', '60', '60', '2002-06-07 21:57:03');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('61', '61', '61', '1995-11-20 02:55:13');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('62', '62', '62', '1970-03-27 11:22:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('63', '63', '63', '1978-11-27 02:26:34');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('64', '64', '64', '2015-12-26 14:05:08');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('65', '65', '65', '1976-05-10 17:56:00');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('66', '66', '66', '2013-07-05 08:51:37');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('67', '67', '67', '1984-10-18 16:38:32');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('68', '68', '68', '1983-01-08 19:45:40');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('69', '69', '69', '1993-01-27 06:59:36');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('70', '70', '70', '2007-06-12 04:31:14');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('71', '71', '71', '1970-04-01 10:51:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('72', '72', '72', '1983-06-03 11:48:40');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('73', '73', '73', '1982-01-06 00:29:49');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('74', '74', '74', '1997-08-09 09:11:39');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('75', '75', '75', '2018-12-31 03:39:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('76', '76', '76', '1975-12-30 07:48:47');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('77', '77', '77', '2006-01-08 06:24:44');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('78', '78', '78', '2002-07-23 10:47:22');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('79', '79', '79', '2002-11-27 18:07:11');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('80', '80', '80', '2005-04-10 01:33:55');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('81', '81', '81', '1990-12-20 08:06:36');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('82', '82', '82', '1999-06-29 01:22:26');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('83', '83', '83', '2016-10-30 21:23:34');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('84', '84', '84', '2012-04-16 12:58:57');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('85', '85', '85', '1994-10-19 19:33:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('86', '86', '86', '2011-08-19 04:35:08');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('87', '87', '87', '2012-07-31 03:36:15');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('88', '88', '88', '2009-10-17 21:12:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('89', '89', '89', '1981-05-03 20:40:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('90', '90', '90', '2016-09-15 18:20:45');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('91', '91', '91', '2015-10-11 19:51:55');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('92', '92', '92', '1978-04-24 00:26:46');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('93', '93', '93', '1983-08-15 21:45:29');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('94', '94', '94', '1996-06-27 08:31:33');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('95', '95', '95', '1980-07-17 18:37:01');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('96', '96', '96', '2000-07-08 01:30:25');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('97', '97', '97', '1985-01-18 18:49:45');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('98', '98', '98', '1977-02-10 21:41:59');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('99', '99', '99', '2011-02-10 06:41:27');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('100', '100', '100', '1981-10-02 07:18:14');


DROP TABLE IF EXISTS photo_albums;
CREATE TABLE photo_albums (
	id SERIAL primary key,
	name varchar(150),
    user_id BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'inventore', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'non', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'dignissimos', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'quis', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'non', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'eligendi', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'expedita', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'commodi', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'placeat', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'similique', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'assumenda', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'omnis', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'autem', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'quibusdam', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'ratione', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'a', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'impedit', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'nihil', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'aut', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'nihil', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'unde', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'qui', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'animi', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'aut', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'blanditiis', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'corrupti', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'maiores', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'cupiditate', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'consequuntur', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'dolor', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'et', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'tempora', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'incidunt', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'praesentium', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'in', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'minima', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'ut', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'hic', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'vero', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'officiis', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'quia', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'quis', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'et', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'facere', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'quis', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'vel', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'amet', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'occaecati', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'dolorum', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'eligendi', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'inventore', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'nisi', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'voluptas', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'praesentium', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'labore', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'qui', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'magnam', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'suscipit', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'sed', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'veniam', '60');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'dolor', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'enim', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'veniam', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'fugit', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'sint', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'quia', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'eum', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'repudiandae', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'voluptas', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'molestiae', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'similique', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'est', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'dolorem', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'reprehenderit', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'enim', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'optio', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'illo', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'laborum', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'magni', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'maxime', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'quis', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'maxime', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'nisi', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'voluptatem', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'est', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'deleniti', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'incidunt', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'similique', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'qui', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'unde', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'aut', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'odio', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'vel', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'aperiam', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'ad', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'nisi', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'facere', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'eius', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'repudiandae', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'in', '100');


DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
	id SERIAL PRIMARY KEY,
	album_id BIGINT unsigned NOT NULL,
	media_id BIGINT unsigned NOT NULL,

	FOREIGN KEY (album_id) REFERENCES photo_albums(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '1', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '2', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '3', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '4', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '5', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '6', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '7', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '8', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '9', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '10', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '11', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '12', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '13', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '14', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '15', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '16', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '17', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '18', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '19', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '20', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '21', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '22', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '23', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '24', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '25', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '26', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '27', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '28', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '29', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '30', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '31', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '32', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '33', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '34', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '35', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '36', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '37', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '38', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '39', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '40', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '41', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '42', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '43', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '44', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '45', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '46', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '47', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '48', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '49', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '50', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '51', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '52', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '53', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '54', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '55', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '56', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '57', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '58', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '59', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '60', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '61', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '62', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '63', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '64', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '65', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '66', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '67', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '68', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '69', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '70', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '71', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '72', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '73', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '74', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '75', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '76', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '77', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '78', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '79', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '80', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '81', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '82', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '83', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '84', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '85', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '86', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '87', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '88', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '89', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '90', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '91', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '92', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '93', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '94', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '95', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '96', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '97', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '98', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '99', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '100', '100');