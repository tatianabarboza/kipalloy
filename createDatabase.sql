CREATE TABLE `pic` (
  `idPic` int(11) NOT NULL AUTO_INCREMENT,
  `descricaoPic` varchar(1000) DEFAULT NULL,
  `datetimePic` datetime DEFAULT NULL,
  PRIMARY KEY (`idPic`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

CREATE TABLE `conceitokipo` (
  `idKipo` int(11) NOT NULL AUTO_INCREMENT,
  `nomeKipo` varchar(500) DEFAULT NULL,
  `definicaoKipo` varchar(5000) DEFAULT NULL,
  `rotuloKipo` varchar(500) DEFAULT NULL,
  `estruturaLinguistica` varchar(5000) DEFAULT NULL,
  `labelEstruturaLinguistica` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idKipo`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

CREATE TABLE `elementopic` (
  `idElementoPic` int(11) NOT NULL AUTO_INCREMENT,
  `idPic` int(11) NOT NULL,
  `rotuloDoElemento` varchar(1000) DEFAULT NULL,
  `idKipo` int(11) DEFAULT NULL,
  `idKipoInstancia` int(11) DEFAULT NULL,
  PRIMARY KEY (`idElementoPic`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
CREATE TABLE `ordemmlt` (
  `idOrdemMlt` int(11) NOT NULL AUTO_INCREMENT,
  `descOrdemMlt` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idOrdemMlt`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
