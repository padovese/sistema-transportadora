CREATE TABLE FUNCIONARIOS
(
	ID INT IDENTITY (1,1) PRIMARY KEY,
	NOME VARCHAR (255),
	CPF NUMERIC (11),
	DATA_NASCIMENTO DATETIME
);

CREATE TABLE CARGOS
(
	ID INT IDENTITY (1,1) PRIMARY KEY,
	DESCRICAO VARCHAR (255)
);

CREATE TABLE FUNCIONARIOS_CARGOS
(
	ID_FUNCIONARIO INT,
	ID_CARGO INT,
	DATA_CARGO DATETIME, 

	CONSTRAINT FK_FUNCIONARIOS FOREIGN KEY (ID_FUNCIONARIO) REFERENCES FUNCIONARIOS (ID),
	CONSTRAINT FK_CARGO FOREIGN KEY (ID_CARGO) REFERENCES CARGOS (ID),
	CONSTRAINT PK_FUNC_CARGO  PRIMARY KEY (ID_FUNCIONARIO, ID_CARGO)
);

CREATE TABLE ENTREGAS
(
	ID INT IDENTITY (1,1) PRIMARY KEY,
	ENDERECO VARCHAR (255),
	CEP NUMERIC (8),
	NUMERO NUMERIC(10),
	STATUS_ENTREGA BIT
);

CREATE TABLE PACOTES
(
	ID INT IDENTITY (1,1) PRIMARY KEY,
	DESCRICAO VARCHAR (255),
	ID_ENTREGA INT

	CONSTRAINT FK_PACOTES FOREIGN KEY (ID_ENTREGA) REFERENCES ENTREGAS (ID)
);

CREATE TABLE FUNCIONARIOS_ENTREGAS
(
	ID_FUNCIONARIO INT,
	ID_ENTREGA INT,
	DATA_ENTREGA DATETIME

	CONSTRAINT FK_FUNCIONARIO FOREIGN KEY (ID_FUNCIONARIO) REFERENCES FUNCIONARIOS (ID),
	CONSTRAINT FK_ENTREGAS FOREIGN KEY (ID_ENTREGA) REFERENCES ENTREGAS (ID)
);




 
 