# kipalloy
Ferramenta de checagem de modelos de processos intensivos em conhecimento

O KipAlloy é uma ferramenta que valida modelos de processos intensivos em conhecimento, usando a ontoloia KiPO [França et al 2014] . A partir de uma tela de entrada de dados onde são informados o conceito da KiPO e o rótulo do elemento. Ao adicionar estes dados na tabela, o rótulo é validado usando o padrão de estrutura linguística, tanto a nível de modelo quanto a nível de instância. 
Após todos os dados incluídos, é gerado um arquivo contendo as regras da KiPO sobre os dados informados na tela de entrada, implementada na linguagem Alloy  e depois, inicializado o Alloy Analyzer. 

Passos para executar a ferramenta:
1) Preparar a base de dados (MySql). Executar o seguinte script abaixo:

CREATE DATABASE kipoml;

CREATE TABLE `conceitokipo` (
  `idKipo` int(11) NOT NULL AUTO_INCREMENT,
  `nomeKipo` varchar(500) DEFAULT NULL,
  `definicaoKipo` varchar(5000) DEFAULT NULL,
  `rotuloKipo` varchar(500) DEFAULT NULL,
  `estruturaLinguistica` varchar(5000) DEFAULT NULL,
  `labelEstruturaLinguistica` varchar(500) DEFAULT NULL,
  `instanciaKipo` int(11) DEFAULT NULL,
  `mensagemIngles` varchar(5000) DEFAULT NULL,
  `mensagemPortugues` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`idKipo`),
  KEY `instanciaKiPO_idx` (`instanciaKipo`),
  CONSTRAINT `instanciaKiPO` FOREIGN KEY (`instanciaKipo`) REFERENCES `conceitokipo` (`idKipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

CREATE TABLE `picteste` (
  `idpicteste` int(11) NOT NULL AUTO_INCREMENT,
  `descricaoPic` varchar(500) DEFAULT NULL,
  `datetimePic` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpicteste`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;


CREATE TABLE `elementopic` (
  `idElementoPic` int(11) NOT NULL AUTO_INCREMENT,
  `idpicteste` int(11) NOT NULL,
  `rotuloDoElemento` varchar(1000) NOT NULL,
  `idKipo` int(11) NOT NULL,
  `instancia` varchar(1000) DEFAULT NULL,
  `especializacao` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`idElementoPic`),
  KEY `elementopic_id_idx` (`idpicteste`),
  KEY `elemento_kipo` (`idKipo`),
  CONSTRAINT `elemento_kipo` FOREIGN KEY (`idKipo`) REFERENCES `conceitokipo` (`idKipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2693 DEFAULT CHARSET=utf8;

CREATE TABLE `ordemmlt` (
  `idOrdemMlt` int(11) NOT NULL AUTO_INCREMENT,
  `descOrdemMlt` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idOrdemMlt`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



2) Fazer upload do arquivo KIPOMLAlloyTool.jar e salvar no c:\

Obs.:
- Deve ter instalado a versão Java 8 e MySql;

Referência 
França, J.B.S., Netto, J.M, Carvalho, J.E.S., Santoro, F.M., Baião, F.A., Pimentel, M.: KiPO: the knowledge-intensive process ontology. In: Software Systems Modeling -DOI 10.1007/s10270-014-0397-1 (2014)
