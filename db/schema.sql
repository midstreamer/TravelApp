CREATE TABLE `Blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_StoryList` varchar(10000) DEFAULT NULL,
  `user_title` varchar(10000) DEFAULT NULL,
  `ParticipantClientId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ParticipantClientId` (`ParticipantClientId`),
  CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`ParticipantClientId`) REFERENCES `Participants` (`client_id`) ON DELETE NO ACTION ON UPDATE CASCADE
);

CREATE TABLE `Participants` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_First_name` varchar(255) DEFAULT NULL,
  `user_Last_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_bio_info` varchar(10000) DEFAULT NULL,
  `user_pic_profile` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`client_id`)
);
CREATE TABLE `rec_atts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_rec_att` varchar(10000) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ParticipantClientId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ParticipantClientId` (`ParticipantClientId`),
  CONSTRAINT `rec_atts_ibfk_1` FOREIGN KEY (`ParticipantClientId`) REFERENCES `Participants` (`client_id`) ON DELETE NO ACTION ON UPDATE CASCADE
);
CREATE TABLE `rec_eves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_rec_eve` varchar(10000) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ParticipantClientId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ParticipantClientId` (`ParticipantClientId`),
  CONSTRAINT `rec_eves_ibfk_1` FOREIGN KEY (`ParticipantClientId`) REFERENCES `Participants` (`client_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ;

CREATE TABLE `rec_foods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_rec_food` varchar(10000) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ParticipantClientId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ParticipantClientId` (`ParticipantClientId`),
  CONSTRAINT `rec_foods_ibfk_1` FOREIGN KEY (`ParticipantClientId`) REFERENCES `Participants` (`client_id`) ON DELETE NO ACTION ON UPDATE CASCADE
); 

CREATE TABLE `user_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_location` varchar(10000) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ParticipantClientId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ParticipantClientId` (`ParticipantClientId`),
  CONSTRAINT `user_locations_ibfk_1` FOREIGN KEY (`ParticipantClientId`) REFERENCES `Participants` (`client_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ;


CREATE TABLE `location_food` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `client_id_food` int(11) NOT NULL,
  `ParticipantClientId` int(11) NOT NULL,
  PRIMARY KEY (`client_id_food`,`ParticipantClientId`),
  KEY `ParticipantClientId` (`ParticipantClientId`),
  CONSTRAINT `location_food_ibfk_1` FOREIGN KEY (`client_id_food`) REFERENCES `user_locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `location_food_ibfk_2` FOREIGN KEY (`ParticipantClientId`) REFERENCES `rec_foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE `participant_food` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ParticipantClientId` int(11) NOT NULL,
  `recFoodId` int(11) NOT NULL,
  PRIMARY KEY (`ParticipantClientId`,`recFoodId`),
  KEY `recFoodId` (`recFoodId`),
  CONSTRAINT `participant_food_ibfk_1` FOREIGN KEY (`ParticipantClientId`) REFERENCES `Participants` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `participant_food_ibfk_2` FOREIGN KEY (`recFoodId`) REFERENCES `rec_foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);