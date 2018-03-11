drop table pecas;
drop table carros;
drop table montadoras;

CREATE TABLE `montadoras` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


CREATE TABLE `carros` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `id_montadora` int(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_montadora` (`id_montadora`),
  CONSTRAINT `carros_ibfk_1` FOREIGN KEY (`id_montadora`) REFERENCES `montadoras` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `pecas` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `cor` varchar(50) DEFAULT NULL,
  `serve_em_id_carro` int(6),
  `descricao_carro` varchar(50) DEFAULT NULL,
  `preco` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `serve_em_id_carro` (`serve_em_id_carro`),
  CONSTRAINT `pecas_ibfk_1` FOREIGN KEY (`serve_em_id_carro`) REFERENCES `carros` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



insert into montadoras(nome) values('Chevrolet');
insert into montadoras(nome) values('Fiat');
insert into montadoras(nome) values('Ford');
insert into montadoras(nome) values('Volkswagen');

insert into carros(nome, id_montadora) values('Astra 1998-2011', 2);
insert into carros(nome, id_montadora) values('Blazer 1995-2011', 2);
insert into carros(nome, id_montadora) values('Caravan 1974-1992', 2);
insert into carros(nome, id_montadora) values('Celta 2000-2016', 2);
insert into carros(nome, id_montadora) values('Chevette Hatch 1980-1988', 2);
insert into carros(nome, id_montadora) values('Chevette 1973-1993', 2);
insert into carros(nome, id_montadora) values('Chevy 500 1983-1995', 2);
insert into carros(nome, id_montadora) values('Cobalt 2011-presente', 2);
insert into carros(nome, id_montadora) values('Corsa 1994-2012', 2);
insert into carros(nome, id_montadora) values('Corsa Sedan / Classic 1995-2012', 2);
insert into carros(nome, id_montadora) values('Corsa Pick-up 1995-2003', 2);
insert into carros(nome, id_montadora) values('Corsa Wagon 1997-2002', 2);
insert into carros(nome, id_montadora) values('Cruze 2011-2016', 2);
insert into carros(nome, id_montadora) values('Cruze Sport6 2011-2016', 2);
insert into carros(nome, id_montadora) values('Kadett 1989-1998', 2);
insert into carros(nome, id_montadora) values('Kadett Conversível 1991-1995', 2);
insert into carros(nome, id_montadora) values('Meriva 2002-2012', 2);
insert into carros(nome, id_montadora) values('Montana 2003-presente', 2);
insert into carros(nome, id_montadora) values('Monza Sedan 1983-1996', 2);
insert into carros(nome, id_montadora) values('Monza Hatch 1982-1989', 2);
insert into carros(nome, id_montadora) values('Omega 1992-1998', 2);
insert into carros(nome, id_montadora) values('Onix 2012-presente', 2);
insert into carros(nome, id_montadora) values('Opala Coupe 1971-1988', 2);
insert into carros(nome, id_montadora) values('Opala 1968-1992', 2);
insert into carros(nome, id_montadora) values('Prisma 2006-presente', 2);
insert into carros(nome, id_montadora) values('S10 1995-presente', 2);
insert into carros(nome, id_montadora) values('TrailBlazer 2012-presente', 2);
insert into carros(nome, id_montadora) values('Vectra 1993-2011', 2);
insert into carros(nome, id_montadora) values('Vectra GT 2007-2011', 2);
insert into carros(nome, id_montadora) values('Zafira 2001-2012', 2);

insert into carros(nome, id_montadora) values('Argo 2017-presente', 3);
insert into carros(nome, id_montadora) values('Brava 1997-2003', 3);
insert into carros(nome, id_montadora) values('Bravo 2010-2016', 3);
insert into carros(nome, id_montadora) values('City', 3);
insert into carros(nome, id_montadora) values('Doblò 2001-2017', 3);
insert into carros(nome, id_montadora) values('Ducato 1998-2017', 3);
insert into carros(nome, id_montadora) values('Fiorino 1979-presente', 3);
insert into carros(nome, id_montadora) values('Idea 2005-2016', 3);
insert into carros(nome, id_montadora) values('Linea 2008-2016', 3);
insert into carros(nome, id_montadora) values('Marea 1998-2007', 3);
insert into carros(nome, id_montadora) values('Marea Weekend 1998-2007', 3);
insert into carros(nome, id_montadora) values('Palio 1996-2017', 3);
insert into carros(nome, id_montadora) values('Weekend/Palio Weekend 1997-2017', 3);
insert into carros(nome, id_montadora) values('Punto 2007-2017', 3);
insert into carros(nome, id_montadora) values('Siena/Grand Siena 1998-presente', 3);
insert into carros(nome, id_montadora) values('Stilo 2002-2010', 3);
insert into carros(nome, id_montadora) values('Strada 1998-presente', 3);
insert into carros(nome, id_montadora) values('Tempra 1992-1999', 3);
insert into carros(nome, id_montadora) values('Tipo 1996-1997', 3);
insert into carros(nome, id_montadora) values('Toro 2016-presente', 3);
insert into carros(nome, id_montadora) values('Uno/Mille 1984-presente', 3);

insert into carros(nome, id_montadora) values('Apollo 1990-1992', 5);
insert into carros(nome, id_montadora) values('Brasília 1973-1982', 5);
insert into carros(nome, id_montadora) values('Fox 2003-presente', 5);
insert into carros(nome, id_montadora) values('Fusca 1959-1986 / 1993-1996', 5);
insert into carros(nome, id_montadora) values('Gol 1980-presente', 5);
insert into carros(nome, id_montadora) values('Golf 1995-presente', 5);
insert into carros(nome, id_montadora) values('Jetta 2015-2016', 5);
insert into carros(nome, id_montadora) values('Kombi 1957-2013', 5);
insert into carros(nome, id_montadora) values('Logus 1993-1997', 5);
insert into carros(nome, id_montadora) values('Parati 1982-2012', 5);
insert into carros(nome, id_montadora) values('Passat 1974-1988', 5);
insert into carros(nome, id_montadora) values('Pointer 1994-1996', 5);
insert into carros(nome, id_montadora) values('Polo 2002-2014 / 2017-presente', 5);
insert into carros(nome, id_montadora) values('Polo Classic 1997-2002', 5);
insert into carros(nome, id_montadora) values('Quantum 1985-2001', 5);
insert into carros(nome, id_montadora) values('Santana 1984-2006', 5);
insert into carros(nome, id_montadora) values('Saveiro 1982-presente', 5);
insert into carros(nome, id_montadora) values('Up 2014-presente', 5);
insert into carros(nome, id_montadora) values('Voyage 1981-1996 / 2008-presente', 5);


insert into pecas(nome, descricao, cor, serve_em_id_carro, preco)
values('Pneu Continental', 'Aro 15', 'Preto', null, 166.36);
insert into pecas(nome, descricao, cor, serve_em_id_carro, preco)
values('Catalisador', 'Ano 2012', 'Preto', 40, 789.89);
insert into pecas(nome, descricao, cor, serve_em_id_carro, preco)
values('Fluído Para Freios', '500ml', null, null, 10.17);
insert into pecas(nome, descricao, cor, serve_em_id_carro, preco)
values('Insulfilm', 'G50', 'Verde', null, 189.75);

/*select * from montadoras;
select * from carros;
select * from pecas;*/