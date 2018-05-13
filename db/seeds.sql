
INSERT INTO `travelapp`.`Participants` (`client_id`, `user_First_name`, `user_Last_name`, `user_email`, `user_bio_info`, `user_pic_profile`, `createdAt`, `updatedAt`) 
VALUES (DEFAULT, 'John', 'Smith', 'JOhn.Smith@gmail.com', 'People often say that the ‘best things come in small packages‘ and for this hotel that has tiny but modern rooms, 
such a statement is true. But don’t let the word ‘tiny’ fool you; it’s not so cramped here — the rooms have more distance between the walls! In fact, they even have this huge 
Play Room that has a fireplace, two ping-pong tables, ample bookshelves, and a 25-foot bar where you can enjoy a drink or meet fellow travelers. As day passes by, you can satiate your 
food-cravings at Pod 39’s colorful taqueria/cantina called as ‘Salvation Taco’, and when the night creeps in, you can head to their rooftop lounge to
unwind\n ', 'https://taquilladecine.com/wp-content/uploads/2015/07/darth-vader-star-wars-anthology-rogue-one.jpg', '2018-05-12 22:54:28', '2018-05-12 22:54:28');



INSERT INTO `Participants` (`client_id`,`user_First_name`,`user_Last_name`,`user_email`,`user_bio_info`,`user_pic_profile`,`createdAt`,`updatedAt`) VALUES (DEFAULT,'David','Smith','David.Smith@gmail.com','With an affordable rate, you will have a dreamy time away as you ride their spectacular 82-foot 1929 vintage yacht that is well-maintained and has even been featured on famous publications like The New York Times, In Style Wedding, and Gourmet Magazine. To add more to the ‘allure’ of this vessel, it has even been featured on NBC’s show: The Apprentice!','http://www.comingsoon.net/assets/uploads/2017/12/luke-hot-toy-header-tlj.jpg','2018-05-13 02:19:34','2018-05-13 02:19:34');



-- for blog


INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('2', 'There are absolutely a LOT more things that you can do while in New York, but for a quick and perfect weekend getaway for yourself or with your girls, the things mentioned above can already give you a fulfilling and unforgettable experience!', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '1');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('3', 'However, if you are in the mood for some ‘walking time’, apart from enjoying the sights, come and take this opportunity to unleash your shopaholic side! Besides, New York is a ‘haven’ for all things fashionable and chic, and at one point or another you and your friends would want to come home with glamorous finds from the streets of Manhattan.', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '2');
INSERT INTO `travelapp`.`Blogs` (`id`, `user_StoryList`, `createdAt`, `updatedAt`, `ParticipantClientId`) VALUES ('4', 'Other than these things, you can also benefit a lot from the hotel’s prime location! It’s just a 6-minute walk away to the Grand Central Station and famous places such as the Times Square, Rockefeller Center, Central Park South, Broadway district, and the Museum of Modern Art are not so far away.\n\n', '2018-05-12 22:54:28', '2018-05-12 22:54:28', '3');
