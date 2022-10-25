DROP DATABASE IF EXISTS cat_cafe;

CREATE DATABASE cat_cafe;

USE cat_cafe;

CREATE TABLE perfil_gatos(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    apodo VARCHAR(30) default NULL,
    anios INT NOT NULL,
    peso FLOAT NOT NULL,
    pelaje VARCHAR(30) NOT NULL,
    ojos VARCHAR(30) NOT NULL,
    llego_con VARCHAR(30)  default NULL,
    info_util VARCHAR(60) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, llego_con, info_util)
VALUES ("Rocket", 3, 3, "Blanco", "Celestes", "Sunny", "Le gusta dormir mucho");

INSERT INTO perfil_gatos (nombre, apodo, anios, peso, pelaje, ojos, info_util)
VALUES ("Pinto", "pin", 5, 3.5, "Naranja y Blanco", "Amarillo y Verde", "Mimoso");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, llego_con, info_util)
VALUES ("Sunny", 2, 5, "Negro", "Amarillentos", "Rocket", "Le gusta jugar con pelotitas");

INSERT INTO perfil_gatos (nombre, apodo, anios, peso, pelaje, ojos, llego_con, info_util)
VALUES ("Emelia", "emeli", 5, 4.4, "Gris y Negro", "Amarillentos", "Seyko", "Le gusta reposar al sol");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Nikki", 4, 4.3, "Gris", "Verde claro", "Apegado a Ricochet");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Ricochet", 4, 4.7, "Blanco y Gris", "Celestes", "Le gusta estar en altura");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Onix", 7, 3.3, "Naranja y Marron", "Amarillentos", "Gloton");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, llego_con, info_util)
VALUES ("Seyko", 2, 3.7, "Blanco y Gris", "Verdosos", "Emelia","Duerme con otros gatos");

INSERT INTO perfil_gatos (nombre, apodo, anios, peso, pelaje, ojos, info_util)
VALUES ("Nathan", "ninja nate", 7, 4.5, "Negro", "Amarillentos", "Le gusta esconderse");


/* 6 Agrego una columna para indicar si el gato esta a dieta: FALSE = no; TRUE = si */
ALTER TABLE perfil_gatos ADD dieta TINYINT NOT NULL default FALSE AFTER peso;
UPDATE perfil_gatos SET dieta = TRUE WHERE (peso > 4);

/* 7 Agrego una columna para indicar los años que restan a que el gato se jubile */
ALTER TABLE perfil_gatos ADD jubila INT NOT NULL default (11 - anios) AFTER anios;

/* 8 Agrego a dos ultimos gatos*/
INSERT INTO perfil_gatos (nombre, apodo, anios, peso, pelaje, ojos, info_util)
VALUES ("Toffee", "toficito", 4, 3.4, "Blanco y Gris", "Verdosos", "Gusta de jugar y a veces estar solo");

INSERT INTO perfil_gatos (nombre, anios, peso, pelaje, ojos, info_util)
VALUES ("Chucky", 10, 4.3, "Naranja Y Blanco", "Amarillentos", "Gusta de dormir y caminar");

/* El valor en el campo dieta para "chucky" no cumple con el computo automatico.*/

