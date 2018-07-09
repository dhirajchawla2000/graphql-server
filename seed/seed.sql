DROP TABLE IF EXISTS `graphql_ex`.`comments`;
DROP TABLE IF EXISTS `graphql_ex`.`posts`;
DROP TABLE IF EXISTS `graphql_ex`.`authors`;

CREATE TABLE `graphql_ex`.`authors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) NOT NULL,
  `firstName` varchar(25) NOT NULL DEFAULT '',
  `lastName` varchar(50) NOT NULL DEFAULT '',
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `graphql_ex`.`posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) NOT NULL,
  `title` varchar(144) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `authorId` int(11) unsigned NOT NULL,
  `votes` int(11) DEFAULT 0,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`authorId`) REFERENCES `graphql_ex`.`authors`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `graphql_ex`.`comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(144) NOT NULL DEFAULT '',
  `postId` int(11) unsigned NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`postId`) REFERENCES `graphql_ex`.`posts`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `graphql_ex`.`authors` WRITE;

INSERT INTO `graphql_ex`.`authors` (`id`, `uuid`, `firstName`, `lastName`, `createdAt`, `updatedAt`)
VALUES
	(1, uuid(), 'Chris', 'Hemsworth', '2018-07-09', '2018-07-09'),
	(2, uuid(), 'Chris', 'Evans', '2018-07-09', '2018-07-09'),
	(3, uuid(), 'Benedict', 'Cumberbatch', '2018-07-09', '2018-07-09'),
	(4, uuid(), 'Robert', 'Downey Jr.', '2018-07-09', '2018-07-09');

UNLOCK TABLES;

LOCK TABLES `graphql_ex`.`posts` WRITE;

INSERT INTO `graphql_ex`.`posts` (`id`, `uuid`, `title`, `url`, `authorId`, `votes`, `createdAt`, `updatedAt`)
VALUES
	(1, uuid(), 'I am the mighty Thor', 'https://media.giphy.com/media/EOfarA6ZUqzZu/giphy.gif', 1, 0, '2018-07-09', '2018-07-09'),
	(2, uuid(), 'I am Captain America. My sheild is strong.', 'https://media.giphy.com/media/tB6MDLMA55U40/giphy.gif', 2, 0, '2018-07-09', '2018-07-09'),
	(3, uuid(), 'I am Doctor Strange. I am the keeper of Time Stone.', 'https://media.giphy.com/media/18RUgAS9WenUMTsxbo/giphy.gif', 3, 0, '2018-07-09', '2018-07-09'),
	(4, uuid(), 'I am Iron Man. Jarvis what do we have here', 'https://media.giphy.com/media/wEgs1cd7vDTt6/giphy.gif', 4, 0, '2018-07-09', '2018-07-09');

UNLOCK TABLES;

LOCK TABLES `graphql_ex`.`comments` WRITE;

INSERT INTO `graphql_ex`.`comments` (`id`, `message`, `postId`, `createdAt`, `updatedAt`)
VALUES
	(1, 'Damn you Thor. I am not done with you. - Loki ', 1, '2018-07-09', '2018-07-09'),
	(2, 'Respect !!!', 2, '2018-07-09', '2018-07-09'),
	(3, 'The most sensible superhero in the Marvel Universe', 3, '2018-07-09', '2018-07-09'),
	(4, 'We have Thanos visiting earth soon. So your better be ready. - Jarvis', 4, '2018-07-09', '2018-07-09');

UNLOCK TABLES;
