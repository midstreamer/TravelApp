create DATABASE TravelApp;


INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`createdAt`, `updatedAt`) 
VALUES (DEFAULT, 'John', 'Smith', 'JOhn.Smith@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'https://taquilladecine.com/wp-content/uploads/2015/07/darth-vader-star-wars-anthology-rogue-one.jpg', 'bootcamp', '2018-05-12 22:54:28', '2018-05-12 22:54:28');
INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`createdAt`, `updatedAt`) 
VALUES (DEFAULT, 'David', 'Smith', 'JOhn.Smith@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'https://taquilladecine.com/wp-content/uploads/2015/07/darth-vader-star-wars-anthology-rogue-one.jpg', 'bootcamp', '2018-05-12 22:54:28', '2018-05-12 22:54:28');
INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`createdAt`, `updatedAt`) 
VALUES (DEFAULT, 'Paul', 'Smith', 'JOhn.Smith@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'https://taquilladecine.com/wp-content/uploads/2015/07/darth-vader-star-wars-anthology-rogue-one.jpg', 'bootcamp', '2018-05-12 22:54:28', '2018-05-12 22:54:28');
-- for blog
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`,`user_title`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'There are absolutely a LOT more things that you can do while in New York, but for a quick and perfect weekend getaway for yourself or with your girls, the things mentioned above can already give you a fulfilling and unforgettable experience!','Testing Title', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '1');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'However, if you are in the mood for some ‘walking time’, apart from enjoying the sights, come and take this opportunity to unleash your shopaholic side! Besides, New York is a ‘haven’ for all things fashionable and chic, and at one point or another you and your friends would want to come home with glamorous finds from the streets of Manhattan.', 'Testing Title2', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '2');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'Other than these things, you can also benefit a lot from the hotel’s prime location! It’s just a 6-minute walk away to the Grand Central Station and famous places such as the Times Square, Rockefeller Center, Central Park South, Broadway district, and the Museum of Modern Art are not so far away.\n\n','Testing Title 3', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '3');
-- for REC user info for two people
-- person one with ID of 1
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('1', 'SUBWAY®Restaurants', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '1');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('1', 'Downtown Aquarium', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '1');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('1', 'NRG Center', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '1');
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('2', 'SUBWAY®Restaurants', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '1');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('2', 'Downtown Aquarium', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '1');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('2', 'NRG Center', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '1');
-- person two with id of 2
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('3', 'Thai Style Fast Food', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '2');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('3', 'Downtown Aquarium', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '2');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('3', 'NRG Center', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '2');
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('4', 'Food Truck Friday @ ', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '2');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('4', 'Downtown Aquarium', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '2');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('4', 'NRG Center', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '2');















---- PARTICIPANTS

INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`google_id`,`facebook_id`,`twit_id`) 
VALUES (DEFAULT, 'John', 'Smith', 'Peter.Smith@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'https://taquilladecine.com/wp-content/uploads/2015/07/darth-vader-star-wars-anthology-rogue-one.jpg', '$2a$10$uUJoU2vi8hqmHboK1/salOsW5iuJaTgHB1N/jD.HukpB6fuLZvwdC', '','','');

INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`google_id`,`facebook_id`,`twit_id`) 
VALUES (DEFAULT, 'David', 'Smith', 'John.Dol@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'https://taquilladecine.com/wp-content/uploads/2015/07/darth-vader-star-wars-anthology-rogue-one.jpg', '$2a$10$uUJoU2vi8hqmHboK1/salOsW5iuJaTgHB1N/jD.HukpB6fuLZvwdC', '','','');

INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`google_id`,`facebook_id`,`twit_id`) 
VALUES (DEFAULT, 'Paul', 'Smith', 'John.Smith@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'https://taquilladecine.com/wp-content/uploads/2015/07/darth-vader-star-wars-anthology-rogue-one.jpg', '$2a$10$uUJoU2vi8hqmHboK1/salOsW5iuJaTgHB1N/jD.HukpB6fuLZvwdC', '','','');

INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`google_id`,`facebook_id`,`twit_id`) 
VALUES (DEFAULT, 'Fox', 'Smith', 'test.test1@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIizaJjybr0TCiqWGf3dKYZfRkDtsQnixg9nKZRKRTDYmyanOaaw', '$2a$10$uUJoU2vi8hqmHboK1/salOsW5iuJaTgHB1N/jD.HukpB6fuLZvwdC', '','','');

INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`google_id`,`facebook_id`,`twit_id`) 
VALUES (DEFAULT, 'Waldo', 'Smith', 'test.test5@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'http://www.starwarsidentities.com/feuil/themes/web/images/characters/yoda.png', '$2a$10$uUJoU2vi8hqmHboK1/salOsW5iuJaTgHB1N/jD.HukpB6fuLZvwdC', '','','');

INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`google_id`,`facebook_id`,`twit_id`) 
VALUES (DEFAULT, 'Dmitri', 'Smith', 'test.test3@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'https://media.gq.com/photos/5a3d2dfbc61be33c2c2751bd/3:2/w_560/star-wars-Episode-IX.jpg', '$2a$10$uUJoU2vi8hqmHboK1/salOsW5iuJaTgHB1N/jD.HukpB6fuLZvwdC', '','','');





INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`google_id`,`facebook_id`,`twit_id`) 
VALUES (DEFAULT, 'Zeppelin', 'Smith', 'test.test16@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'http://www.ihindiwishes.com/wp-content/uploads/2018/01/love-couple-dp.png', '$2a$10$uUJoU2vi8hqmHboK1/salOsW5iuJaTgHB1N/jD.HukpB6fuLZvwdC', '','','');


INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`google_id`,`facebook_id`,`twit_id`) 
VALUES (DEFAULT, 'Blaze', 'Smith', 'test.test14@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'http://www.ihindiwishes.com/wp-content/uploads/2018/01/romantic-love-dp.png', '$2a$10$uUJoU2vi8hqmHboK1/salOsW5iuJaTgHB1N/jD.HukpB6fuLZvwdC', '','','');

INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`google_id`,`facebook_id`,`twit_id`) 
VALUES (DEFAULT, 'Ziv', 'Smith', 'test.test13@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'http://www.ihindiwishes.com/wp-content/uploads/2018/01/sad-profile-pictures.jpg', '$2a$10$uUJoU2vi8hqmHboK1/salOsW5iuJaTgHB1N/jD.HukpB6fuLZvwdC', '','','');

INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`google_id`,`facebook_id`,`twit_id`) 
VALUES (DEFAULT, 'Ruby', 'Smith', 'test.test12@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'http://www.ihindiwishes.com/wp-content/uploads/2018/01/whatsapp-dp-for-gym-lovers.jpg', '$2a$10$uUJoU2vi8hqmHboK1/salOsW5iuJaTgHB1N/jD.HukpB6fuLZvwdC', '','','');

INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`google_id`,`facebook_id`,`twit_id`) 
VALUES (DEFAULT, 'Aziza', 'Smith', 'test.test11@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'http://www.ihindiwishes.com/wp-content/uploads/2018/01/Happy-Whatsapp-DP-Images.jpg', '$2a$10$uUJoU2vi8hqmHboK1/salOsW5iuJaTgHB1N/jD.HukpB6fuLZvwdC', '','','');

INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `user_password`,`google_id`,`facebook_id`,`twit_id`) 
VALUES (DEFAULT, 'Harlow', 'Smith', 'test.test10@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'https://weneedfun.com/wp-content/uploads/2016/07/Girls-Black-and-White-Profile-Pictures-8.jpg', '$2a$10$uUJoU2vi8hqmHboK1/salOsW5iuJaTgHB1N/jD.HukpB6fuLZvwdC', '','','');


- for blog
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`,`user_title`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'There are absolutely a LOT more things that you can do while in New York, but for a quick and perfect weekend getaway for yourself or with your girls, the things mentioned above can already give you a fulfilling and unforgettable experience!','Testing Title', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '1');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'However, if you are in the mood for some ‘walking time’, apart from enjoying the sights, come and take this opportunity to unleash your shopaholic side! Besides, New York is a ‘haven’ for all things fashionable and chic, and at one point or another you and your friends would want to come home with glamorous finds from the streets of Manhattan.', 'Testing Title2', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '1');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'Other than these things, you can also benefit a lot from the hotel’s prime location! It’s just a 6-minute walk away to the Grand Central Station and famous places such as the Times Square, Rockefeller Center, Central Park South, Broadway district, and the Museum of Modern Art are not so far away.\n\n','Testing Title 3', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '1');

-- for blog
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`,`user_title`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'There are absolutely a LOT more things that you can do while in New York, but for a quick and perfect weekend getaway for yourself or with your girls, the things mentioned above can already give you a fulfilling and unforgettable experience!','Testing Title', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '2');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'However, if you are in the mood for some ‘walking time’, apart from enjoying the sights, come and take this opportunity to unleash your shopaholic side! Besides, New York is a ‘haven’ for all things fashionable and chic, and at one point or another you and your friends would want to come home with glamorous finds from the streets of Manhattan.', 'Testing Title2', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '2');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'Other than these things, you can also benefit a lot from the hotel’s prime location! It’s just a 6-minute walk away to the Grand Central Station and famous places such as the Times Square, Rockefeller Center, Central Park South, Broadway district, and the Museum of Modern Art are not so far away.\n\n','Testing Title 3', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '2');

-- for blog
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`,`user_title`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'There are absolutely a LOT more things that you can do while in New York, but for a quick and perfect weekend getaway for yourself or with your girls, the things mentioned above can already give you a fulfilling and unforgettable experience!','Testing Title', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '3');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'However, if you are in the mood for some ‘walking time’, apart from enjoying the sights, come and take this opportunity to unleash your shopaholic side! Besides, New York is a ‘haven’ for all things fashionable and chic, and at one point or another you and your friends would want to come home with glamorous finds from the streets of Manhattan.', 'Testing Title2', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '3');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'Other than these things, you can also benefit a lot from the hotel’s prime location! It’s just a 6-minute walk away to the Grand Central Station and famous places such as the Times Square, Rockefeller Center, Central Park South, Broadway district, and the Museum of Modern Art are not so far away.\n\n','Testing Title 3', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '3');

-- for blog
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`,`user_title`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'There are absolutely a LOT more things that you can do while in New York, but for a quick and perfect weekend getaway for yourself or with your girls, the things mentioned above can already give you a fulfilling and unforgettable experience!','Testing Title', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '4');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'However, if you are in the mood for some ‘walking time’, apart from enjoying the sights, come and take this opportunity to unleash your shopaholic side! Besides, New York is a ‘haven’ for all things fashionable and chic, and at one point or another you and your friends would want to come home with glamorous finds from the streets of Manhattan.', 'Testing Title2', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '4');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'Other than these things, you can also benefit a lot from the hotel’s prime location! It’s just a 6-minute walk away to the Grand Central Station and famous places such as the Times Square, Rockefeller Center, Central Park South, Broadway district, and the Museum of Modern Art are not so far away.\n\n','Testing Title 3', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '4');
-- for blog
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`,`user_title`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'There are absolutely a LOT more things that you can do while in New York, but for a quick and perfect weekend getaway for yourself or with your girls, the things mentioned above can already give you a fulfilling and unforgettable experience!','Testing Title', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '5');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'However, if you are in the mood for some ‘walking time’, apart from enjoying the sights, come and take this opportunity to unleash your shopaholic side! Besides, New York is a ‘haven’ for all things fashionable and chic, and at one point or another you and your friends would want to come home with glamorous finds from the streets of Manhattan.', 'Testing Title2', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '5');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'Other than these things, you can also benefit a lot from the hotel’s prime location! It’s just a 6-minute walk away to the Grand Central Station and famous places such as the Times Square, Rockefeller Center, Central Park South, Broadway district, and the Museum of Modern Art are not so far away.\n\n','Testing Title 3', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '5');
-- for blog
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`,`user_title`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'There are absolutely a LOT more things that you can do while in New York, but for a quick and perfect weekend getaway for yourself or with your girls, the things mentioned above can already give you a fulfilling and unforgettable experience!','Testing Title', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '6');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'However, if you are in the mood for some ‘walking time’, apart from enjoying the sights, come and take this opportunity to unleash your shopaholic side! Besides, New York is a ‘haven’ for all things fashionable and chic, and at one point or another you and your friends would want to come home with glamorous finds from the streets of Manhattan.', 'Testing Title2', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '6');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'Other than these things, you can also benefit a lot from the hotel’s prime location! It’s just a 6-minute walk away to the Grand Central Station and famous places such as the Times Square, Rockefeller Center, Central Park South, Broadway district, and the Museum of Modern Art are not so far away.\n\n','Testing Title 3', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '6');
-- for blog
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`,`user_title`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'There are absolutely a LOT more things that you can do while in New York, but for a quick and perfect weekend getaway for yourself or with your girls, the things mentioned above can already give you a fulfilling and unforgettable experience!','Testing Title', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '7');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'However, if you are in the mood for some ‘walking time’, apart from enjoying the sights, come and take this opportunity to unleash your shopaholic side! Besides, New York is a ‘haven’ for all things fashionable and chic, and at one point or another you and your friends would want to come home with glamorous finds from the streets of Manhattan.', 'Testing Title2', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '7');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'Other than these things, you can also benefit a lot from the hotel’s prime location! It’s just a 6-minute walk away to the Grand Central Station and famous places such as the Times Square, Rockefeller Center, Central Park South, Broadway district, and the Museum of Modern Art are not so far away.\n\n','Testing Title 3', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '7');
-- for blog
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`,`user_title`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'There are absolutely a LOT more things that you can do while in New York, but for a quick and perfect weekend getaway for yourself or with your girls, the things mentioned above can already give you a fulfilling and unforgettable experience!','Testing Title', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '8');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'However, if you are in the mood for some ‘walking time’, apart from enjoying the sights, come and take this opportunity to unleash your shopaholic side! Besides, New York is a ‘haven’ for all things fashionable and chic, and at one point or another you and your friends would want to come home with glamorous finds from the streets of Manhattan.', 'Testing Title2', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '8');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'Other than these things, you can also benefit a lot from the hotel’s prime location! It’s just a 6-minute walk away to the Grand Central Station and famous places such as the Times Square, Rockefeller Center, Central Park South, Broadway district, and the Museum of Modern Art are not so far away.\n\n','Testing Title 3', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '8');

-- for blog
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`,`user_title`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'There are absolutely a LOT more things that you can do while in New York, but for a quick and perfect weekend getaway for yourself or with your girls, the things mentioned above can already give you a fulfilling and unforgettable experience!','Testing Title', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '9');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'However, if you are in the mood for some ‘walking time’, apart from enjoying the sights, come and take this opportunity to unleash your shopaholic side! Besides, New York is a ‘haven’ for all things fashionable and chic, and at one point or another you and your friends would want to come home with glamorous finds from the streets of Manhattan.', 'Testing Title2', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '9');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'Other than these things, you can also benefit a lot from the hotel’s prime location! It’s just a 6-minute walk away to the Grand Central Station and famous places such as the Times Square, Rockefeller Center, Central Park South, Broadway district, and the Museum of Modern Art are not so far away.\n\n','Testing Title 3', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '9');
-- for blog
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`,`user_title`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'There are absolutely a LOT more things that you can do while in New York, but for a quick and perfect weekend getaway for yourself or with your girls, the things mentioned above can already give you a fulfilling and unforgettable experience!','Testing Title', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '10');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'However, if you are in the mood for some ‘walking time’, apart from enjoying the sights, come and take this opportunity to unleash your shopaholic side! Besides, New York is a ‘haven’ for all things fashionable and chic, and at one point or another you and your friends would want to come home with glamorous finds from the streets of Manhattan.', 'Testing Title2', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '10');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `user_title`,`createdAt`, `updatedAt`, `ParticipantClientId`) VALUES (DEFAULT, 'Other than these things, you can also benefit a lot from the hotel’s prime location! It’s just a 6-minute walk away to the Grand Central Station and famous places such as the Times Square, Rockefeller Center, Central Park South, Broadway district, and the Museum of Modern Art are not so far away.\n\n','Testing Title 3', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '10');
-- for blog




INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`,  `ParticipantClientId`) VALUES (DEFAULT, 'SUBWAY®Restaurants',  '1');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium', '1');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '1');
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`,  `ParticipantClientId`) VALUES (DEFAULT, 'SUBWAY®Restaurants',  '1');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`,  `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium',  '1');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '1');
-- person two with id of 2
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`, `ParticipantClientId`) VALUES (DEFAULT, 'Thai Style Fast Food',  '2');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium', '2');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '2');
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`,  `ParticipantClientId`) VALUES (DEFAULT, 'Food Truck Friday @ ', '2');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium',  '2');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`,  `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '2');
-- person one with ID of 1
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`,  `ParticipantClientId`) VALUES (DEFAULT, 'SUBWAY®Restaurants',  '3');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium', '3');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '3');
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`,  `ParticipantClientId`) VALUES (DEFAULT, 'SUBWAY®Restaurants',  '3');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`,  `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium',  '3');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '3');
-- person two with id of 2
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`, `ParticipantClientId`) VALUES (DEFAULT, 'Thai Style Fast Food',  '4');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium', '4');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '4');
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`,  `ParticipantClientId`) VALUES (DEFAULT, 'Food Truck Friday @ ', '4');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium',  '4');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`,  `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '4');
-- person one with ID of 1
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`,  `ParticipantClientId`) VALUES (DEFAULT, 'SUBWAY®Restaurants',  '5');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium', '5');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '5');
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`,  `ParticipantClientId`) VALUES (DEFAULT, 'SUBWAY®Restaurants',  '5');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`,  `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium',  '5');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '5');
-- person two with id of 2
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`, `ParticipantClientId`) VALUES (DEFAULT, 'Thai Style Fast Food',  '6');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium', '6');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '6');
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`,  `ParticipantClientId`) VALUES (DEFAULT, 'Food Truck Friday @ ', '6');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium',  '6');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`,  `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '6');
-- person one with ID of 1
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`,  `ParticipantClientId`) VALUES (DEFAULT, 'SUBWAY®Restaurants',  '7');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium', '7');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '7');
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`,  `ParticipantClientId`) VALUES (DEFAULT, 'SUBWAY®Restaurants',  '7');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`,  `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium',  '7');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '7');
-- person two with id of 2
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`, `ParticipantClientId`) VALUES (DEFAULT, 'Thai Style Fast Food',  '8');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium', '8');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '8');
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`,  `ParticipantClientId`) VALUES (DEFAULT, 'Food Truck Friday @ ', '8');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium',  '8');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`,  `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '8');
-- person one with ID of 1
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`,  `ParticipantClientId`) VALUES (DEFAULT, 'SUBWAY®Restaurants',  '9');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`, `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium', '9');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '9');
INSERT INTO `travelapp`.`rec_foods` (`id`, `user_rec_food`,  `ParticipantClientId`) VALUES (DEFAULT, 'SUBWAY®Restaurants',  '9');
INSERT INTO `travelapp`.`rec_atts` (`id`, `user_rec_att`,  `ParticipantClientId`) VALUES (DEFAULT, 'Downtown Aquarium',  '9');
INSERT INTO `travelapp`.`rec_eves` (`id`, `user_rec_eve`, `ParticipantClientId`) VALUES (DEFAULT, 'NRG Center', '9');




INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`, `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Afghanistan',  '1', 'AF');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`, `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Albania', '1', 'AL');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Algeria',  '1', 'DZ');

INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Armenia',  '2', 'AM');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Aruba', '2', 'AW');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Australia', '2', 'AU');

INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Ecuador',  '3', 'EC');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Egypt', '3', 'EG');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Eritrea',  '3', 'ER');

INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Fiji',  '4', 'FJ');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Finland', '4', 'FI');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'France', '4', 'FI');

INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Gabon',  '5', 'GA');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Gambia', '5', 'GM');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Georgia',  '5', 'GE');

INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Haiti',  '6', 'HT');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Honduras', '6', 'HN');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Hong Kong', '6', 'HK');

INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Iraq',  '7', 'IQ');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Ireland', '7', 'IE');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Israel',  '7', 'IL');

INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Lebanon',  '8', 'LB');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Lesotho', '8', 'LS');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Libya', '8', 'LY');

INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`, `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Macao',  '9', 'MO');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`,  `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Malawi', '9', 'MW');
INSERT INTO `TravelApp`.`user_locations` (`id`, `user_location`, `ParticipantClientId`, `location_code`) VALUES (DEFAULT, 'Malaysia',  '9', 'MY');