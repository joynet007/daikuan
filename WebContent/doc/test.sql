DROP TABLE IF EXISTS `dk_user`;
CREATE TABLE `dk_user` (
  `userID` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userPassword` varchar(50) NOT NULL,
  `userType` varchar(50) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

