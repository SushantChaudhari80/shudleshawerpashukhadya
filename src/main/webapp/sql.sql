
 CREATE TABLE `customer` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `cname` varchar(45) NOT NULL,
  `caddress` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `stock` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(45) NOT NULL,
  `qty` varchar(45) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `transaction_history` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) DEFAULT NULL,
  `date_time` varchar(45) NOT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `amount` varchar(45) NOT NULL,
  `t_type` varchar(45) NOT NULL,
  `cid` int NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


