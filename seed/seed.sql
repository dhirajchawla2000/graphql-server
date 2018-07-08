DROP TABLE IF EXISTS `graphql_ex`.`comments`;
DROP TABLE IF EXISTS `graphql_ex`.`posts`;
DROP TABLE IF EXISTS `graphql_ex`.`author`;

CREATE TABLE `graphql_ex`.`authors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(25) NOT NULL DEFAULT '',
  `lastName` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `graphql_ex`.`posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(144) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `authorId` int(11) unsigned NOT NULL,
  `votes` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`authorId`) REFERENCES `graphql_ex`.`authors`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `graphql_ex`.`comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(144) NOT NULL DEFAULT '',
  `postId` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`postId`) REFERENCES `graphql_ex`.`posts`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `graphql_ex`.`authors` WRITE;

INSERT INTO `graphql_ex`.`authors` (`id`, `firstName`, `lastName`)
VALUES
	(1, 'Chris', 'Hemsworth'),
	(2, 'Chris', 'Evans'),
	(3, 'Benedict', 'Cumberbatch'),
	(4, 'Robert', 'Downey Jr.');

UNLOCK TABLES;

LOCK TABLES `graphql_ex`.`posts` WRITE;

INSERT INTO `graphql_ex`.`posts` (`id`, `title`, `url`, `authorId`, `votes`)
VALUES
	(1, 'I am the mighty Thor', 'https://media.giphy.com/media/EOfarA6ZUqzZu/giphy.gif', 1, 0),
	(2, 'I am Captain America. My sheild is strong.', 'https://media.giphy.com/media/tB6MDLMA55U40/giphy.gif', 2, 0),
	(3, 'I am Doctor Strange. I am the keeper of Time Stone.', 'https://media.giphy.com/media/18RUgAS9WenUMTsxbo/giphy.gif', 3, 0),
	(4, 'I am Iron Man. Jarvis what do we have here', 'https://media.giphy.com/media/wEgs1cd7vDTt6/giphy.gif', 4, 0);

UNLOCK TABLES;

LOCK TABLES `graphql_ex`.`comments` WRITE;

INSERT INTO `graphql_ex`.`comments` (`id`, `message`, `postId`)
VALUES
	(1, 'Damn you Thor. I am not done with you. - Loki ', 1),
	(2, 'Respect !!!', 2),
	(3, 'The most sensible superhero in the Marvel Universe', 3),
	(4, 'We have Thanos visiting earth soon. So your better be ready. - Jarvis', 4);

UNLOCK TABLES;
