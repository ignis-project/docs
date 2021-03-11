CREATE DATABASE IGNIS_DB;
USE IGNIS_DB;

CREATE USER 'ADMIN'@'localhost' IDENTIFIED BY 'repolhocozido123';
GRANT ALL PRIVILEGES ON ignis_db.* TO 'ADMIN'@'localhost'; 


CREATE TABLE Cliente (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(70),
	cnpj VARCHAR(14),
    email VARCHAR(70),
    senha VARCHAR(16),
    telefone VARCHAR(15),
    cepEndereco CHAR(8),
    logradouroEndereco VARCHAR(40),
    bairroEndereco VARCHAR(40),
    municipioEndereco VARCHAR(40),
    cidadeEndereco VARCHAR(40),
    ufEndereco CHAR(2)    
);

CREATE TABLE Sensor (
	id INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(40),
    temperatura FLOAT NOT NULL,
    umidade FLOAT NOT NULL,
    area VARCHAR(5) NOT NULL,
    moment DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    statusSensor INT,
    CHECK(statusSensor = 1 or statusSensor = 0)
);

INSERT INTO Cliente (nome, cnpj, email, senha, telefone, cepEndereco, logradouroEndereco, bairroEndereco, municipioEndereco, cidadeEndereco, ufEndereco)
	VALUES 
		('DANONE LTDA', '66666666666666', 'danone@gmail.com', 'senha123', '66 66666666', '08466200', 'Rua dos Bobos', 'Bairro dos Bobos', 'Municipio dos Bobos', 'Cidade dos Bobos', 'SP'),
		('Defesa Civil', '12123847382738', 'defesa.civil@gov.com.br', '123', '11 40028922', '08682300', 'Rua da Defesa Civil', 'Bairro da Defesa Civil', 'Municipio da Defesa Civil', 'Cidade da Defesa Civil', 'RJ'),
		('Ministério da Agricultura', '77777777777777', 'ministerio.agricultura@gov.com.br', 'agroétudo123', '66626618291', '10101700', 'Rua da Agricultura', 'Bairro da Agricultura', 'Municipio da Agricultura', 'Cidade da Agricultura', 'BA');

INSERT INTO Sensor (modelo, temperatura, umidade, area, statusSensor)
	VALUES
		('DHT11', 29.5, 0.3, 'A1', 1),
        ('DHT11', 39.8, 0.1, 'A2', 1),
        ('DHT11', 54.2, 0.015, 'A3', 1),
        ('DHT11', 19.5, 0.2, 'A4', 0),
        ('DHT11', 12.4, 0.35, 'A5', 1);
        

SELECT * FROM Cliente;
SELECT * FROM Sensor;

DROP DATABASE IGNIS_DB;
DROP TABLE Cliente;
DROP TABLE Sensor;