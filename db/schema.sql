create DATABASE TravelApp;

use TravelApp;


CREATE TABLE `Participants` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_First_name` varchar(255) DEFAULT NULL,
  `user_Last_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_bio_info` varchar(10000) DEFAULT NULL,
  `user_pic_profile` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`client_id`)
);
