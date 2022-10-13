DROP DATABASE IF EXISTS cat_cafe;

CREATE DATABASE cat_cafe;

USE cat_cafe;

CREATE TABLE perfil_gatos(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    apodo VARCHAR(30) default "No tiene",
    anios INT NOT NULL,
    peso FLOAT NOT NULL,
    /*dieta TINYINT NOT NULL default FALSE,*/
    pelaje VARCHAR(30) NOT NULL,
    ojos VARCHAR(30) NOT NULL,
    /*llego_con VARCHAR(30) NOT NULL default FALSE,*/
    info_util VARCHAR(60) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Rocket", 3, 3, "Blanco", "Celestes", "Le gusta dormir mucho");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Pinto", 5, 3.5, "Naranja y Blanco", "Amarillo y Verde", "Mimoso");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Sunny", 2, 5, "Negro", "Amarillentos", "Le gusta jugar con pelotitas");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Emelia", 5, 4.4, "Gris y Negro", "Amarillentos", "Le gusta reposar al sol");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Nikki", 4, 4.3, "Gris", "Verde claro", "Apegado a Ricochet");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Ricochet", 4, 4.7, "Blanco y Gris", "Celestes", "Le gusta estar en altura");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Onix", 7, 3.3, "Naranja y Marron", "Amarillentos", "Gloton");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Seyko", 2, 3.7, "Blanco y Gris", "Verdosos", "Duerme con otros gatos");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Nathan", 7, 4.5, "Negro", "Amarillentos", "Le gusta esconderse");

/* 8 Agrego a dos ultimos gatos*/
INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Toffee", 4, 3.4, "Blanco y Gris", "Verdosos", "Gusta de jugar y a veces estar solo");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Chucky", 10, 4.3, "Naranja Y Blanco", "Amarillentos", "Gusta de dormir y caminar");


/* 2 y 3  Agrego una columna para los apodos con valor por defecto "no tiene"*/
UPDATE perfil_gatos SET apodo = "pin" WHERE id = 2;
UPDATE perfil_gatos SET apodo = "emeli" WHERE id = 4;
UPDATE perfil_gatos SET apodo = "ninja nate" WHERE id = 9;
UPDATE perfil_gatos SET apodo = "tofisito" WHERE id = 10;

/* 4 y 5 Agrego una columna para los acompañantes con valor por defecto "Nadie"*/
ALTER TABLE perfil_gatos ADD llego_con VARCHAR(30) default "Nadie";
UPDATE perfil_gatos SET llego_con = "Sunny" WHERE id = 1;
UPDATE perfil_gatos SET llego_con = "Rocket" WHERE id = 3;
UPDATE perfil_gatos SET llego_con = "Seyko" WHERE id = 4;
UPDATE perfil_gatos SET llego_con = "Emelia" WHERE id = 8;

/* 6 Agrego una columna para indicar si el gato esta a dieta: FALSE = no; TRUE = si */
ALTER TABLE perfil_gatos ADD dieta TINYINT NOT NULL default FALSE AFTER peso;
UPDATE perfil_gatos SET dieta = TRUE WHERE (peso > 4);

/* 7 Agrego una columna para indicar los años que restan a que el gato se jubile */
ALTER TABLE perfil_gatos ADD jubila INT NOT NULL default (11 - anios) AFTER anios;



