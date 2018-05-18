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