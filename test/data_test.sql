-- EVENTO
insert into EVENTO (cod_evento, nombre_evento, fecha_inicio, fecha_fin, lugar) values (1, 'Evento Vizal', '2022-01-20', '2022-01-28', 'Vizal San Pablo');
insert into EVENTO (cod_evento, nombre_evento, fecha_inicio, fecha_fin, lugar) values (2, 'Evento San Isidro', '2021-09-01', '2022-09-13', 'San Isidro');
insert into EVENTO (cod_evento, nombre_evento, fecha_inicio, fecha_fin, lugar) values (3, 'Evento Umn', '2021-04-15', '2021-12-25', 'Umm as Summāq');
insert into EVENTO (cod_evento, nombre_evento, fecha_inicio, fecha_fin, lugar) values (4, 'Evento Alejo',  '2021-10-26', '2022-11-07', 'Alejo Ledesma');
insert into EVENTO (cod_evento, nombre_evento, fecha_inicio, fecha_fin, lugar) values (5, 'Evento Bayzhansay', '2022-03-13', '2021-05-03', 'Bayzhansay');
insert into EVENTO (cod_evento, nombre_evento, fecha_inicio, fecha_fin, lugar) values (6, 'Evento Bayzhanfsay', '2022-03-13', '2023-05-03', 'Bayzhansay');
insert into EVENTO (cod_evento, nombre_evento, fecha_inicio, fecha_fin, lugar) values (7, 'Evento Neo San Isidro', '2021-09-01', '2023-09-13', 'San Isidro');

-- JURADO
INSERT INTO JURADO VALUES ("er", "Yoyo", "yoyo", "yoyo", "coordinador", MD5(12345));
INSERT INTO JURADO VALUES (2, "Yoyo", "yoyo", "yoyo", "juaro", MD5(123));

insert into JURADO (CURP, nombre_pila, apellido_1, apellido_2, usuario, contrasenna) values ('853-74-2727', 'Morganne', 'Jennison', 'Foli', 'mfoli0', md5('UlsEzu'));
insert into JURADO (CURP, nombre_pila, apellido_1, apellido_2, usuario, contrasenna) values ('744-39-0158', 'Stillman', 'Stewart', 'Abramsky', 'sabramsky1', 'OukefxSa');
insert into JURADO (CURP, nombre_pila, apellido_1, apellido_2, usuario, contrasenna) values ('598-91-0322', 'Amory', 'O Brogane', 'Harteley', 'aharteley2', 'G0UnwHUuWFp');
insert into JURADO (CURP, nombre_pila, apellido_1, apellido_2, usuario, contrasenna) values ('672-13-4139', 'Jordanna', 'Winfindine', 'O Growgane', 'jogrowgane3', 'AELICM');
insert into JURADO (CURP, nombre_pila, apellido_1, apellido_2, usuario, contrasenna) values ('184-33-3572', 'Korella', 'Pennicott', 'Copnell', 'kcopnell4', 'f5DXw2Z');
insert into JURADO (CURP, nombre_pila, apellido_1, apellido_2, usuario, contrasenna) values ('485-92-0777', 'Caryl', 'Padilla', 'Burkhill', 'cburkhill5', 'heFYUoQ4c');
insert into JURADO (CURP, nombre_pila, apellido_1, apellido_2, usuario, contrasenna) values ('460-56-8968', 'Lian', 'Guwer', 'Sirrell', 'lsirrell6', '5VseeVL');
insert into JURADO (CURP, nombre_pila, apellido_1, apellido_2, usuario, contrasenna) values ('434-55-3768', 'Celka', 'Jodrelle', 'McGorman', 'cmcgorman7', 'XSpBNXL');
insert into JURADO (CURP, nombre_pila, apellido_1, apellido_2, usuario, contrasenna) values ('374-30-3019', 'Deanna', 'Maes', 'Bakhrushin', 'dbakhrushin6', '19WECo');
insert into JURADO (CURP, nombre_pila, apellido_1, apellido_2, usuario, contrasenna) values ('335-09-9825', 'Marchall', 'Desouza', 'Klamman', 'mklamman9', 'usMqZy3u6');

-- EQUIPO

insert into EQUIPO (cod_equipo, categoria, institucion) values (1, 'secundaria', 'Universidad Católica de Salta');
insert into EQUIPO (cod_equipo, categoria, institucion) values (2, 'secundaria', 'Université Paris-Dauphine (Paris IX)');
insert into EQUIPO (cod_equipo, categoria, institucion) values (3, 'bachillerato', 'Pusan University of Foreign Studies');
insert into EQUIPO (cod_equipo, categoria, institucion) values (4, 'bachillerato', 'University of Dubrovnik');
insert into EQUIPO (cod_equipo, categoria, institucion) values (5, 'primaria', 'Moraine Valley Community College');
insert into EQUIPO (cod_equipo, categoria, institucion) values (6, 'profesional', 'Technological University (Maubin)');
insert into EQUIPO (cod_equipo, categoria, institucion) values (7, 'secundaria', 'Universidad Central');
insert into EQUIPO (cod_equipo, categoria, institucion) values (8, 'bachillerato', 'Hungarian University of Physical Education');
insert into EQUIPO (cod_equipo, categoria, institucion) values (9, 'profesional', 'City University of New York (CUNY) System');
insert into EQUIPO (cod_equipo, categoria, institucion) values (10, 'secundaria', 'Universidad Autónoma Latinoamericana');
insert into EQUIPO (cod_equipo, categoria, institucion) values (11, 'bachillerato', 'Illinois Benedictine University');
insert into EQUIPO (cod_equipo, categoria, institucion) values (12, 'profesional', 'Moscow State Institute of Steel and Alloys');
insert into EQUIPO (cod_equipo, categoria, institucion) values (13, 'primaria', 'Riga Technical University');
insert into EQUIPO (cod_equipo, categoria, institucion) values (14, 'bachillerato', 'Lviv Medical University');
insert into EQUIPO (cod_equipo, categoria, institucion) values (15, 'primaria', 'University of Indianapolis');
insert into EQUIPO (cod_equipo, categoria, institucion) values (16, 'profesional', 'NTI University');
insert into EQUIPO (cod_equipo, categoria, institucion) values (17, 'primaria', 'Ferris University');
insert into EQUIPO (cod_equipo, categoria, institucion) values (18, 'bachillerato', 'Chalmers University of Technology');
insert into EQUIPO (cod_equipo, categoria, institucion) values (19, 'primaria', 'Shanghai Lixin University of Commerce');
insert into EQUIPO (cod_equipo, categoria, institucion) values (20, 'bachillerato', 'Kumasi Polytechnic ');

-- PROYECTO

insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (1, 'Bitwolf', '5');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (2, 'Hatity', '20');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (3, 'Transcof', '14');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (4, 'Bitwolf', '19');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (5, 'Home Ing', '13');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (6, 'Tres-Zap', '10');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (7, 'Stim', '17');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (8, 'Voltsillam', '15');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (9, 'Pannier', '11');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (10, 'Aerified', '7');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (11, 'Otcom', '18');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (12, 'Opela', '8');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (13, 'Cardguard', '3');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (14, 'Zathin', '1');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (15, 'Andalax', '6');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (16, 'Greenlam', '2');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (17, 'Keylex', '4');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (18, 'Fix San', '16');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (19, 'Solarbreeze', '12');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (20, 'Toughjoyfax', '9');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (21, 'Ventosanzap', '16');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (22, 'Bitchip', '20');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (23, 'Trippledex', '9');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (24, 'Span', '3');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (25, 'Trippledex', '2');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (26, 'Keylex', '17');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (27, 'Subin', '1');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (28, 'Daltfresh', '6');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (29, 'Treeflex', '13');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (30, 'Home Ing', '18');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (31, 'Rank', '10');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (32, 'Regrant', '8');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (33, 'Tempsoft', '15');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (34, 'Lotlux', '19');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (35, 'Alphazap', '14');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (36, 'Sonair', '4');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (37, 'Flexidy', '7');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (38, 'Aerified', '11');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (39, 'Tin', '12');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (40, 'Kanlam', '5');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (41, 'Cardify', '3');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (42, 'Solarbreeze', '9');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (43, 'Bitwolf', '17');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (44, 'Stim', '11');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (45, 'Ventosanzap', '4');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (46, 'Alphazap', '8');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (47, 'Prodder', '12');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (48, 'Kanlam', '18');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (49, 'Sonsing', '14');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (50, 'Tres-Zap', '20');
insert into PROYECTO (cod_proyecto, nombre_proyecto, cod_equipo) values (51, 'Tres', '1');



-- PARTICIPANTE

insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('436-73-7645', '10', 'Cristian', 'Dryburgh', 'Gally', '2004-09-14');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('684-72-2860', '1', 'Woody', 'Dubose', 'Soulsby', '2008-02-16');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('891-51-1142', '8', 'Theo', 'Dunphie', 'Dagon', '2003-02-13');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('465-29-6763', '7', 'Osmond', 'Lemasney', 'Olivari', '2011-11-03');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('211-53-5728', '15', 'Lefty', 'Guilleton', 'Dorset', '2005-09-06');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('424-45-2401', '18', 'Hugibert', 'Lanfer', 'Ropp', '2012-06-24');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('584-92-6073', '6', 'Talia', 'Coopey', 'Fadell', '2003-05-14');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('662-45-0644', '5', 'Patsy', 'Summerhayes', 'Dukes', '2005-08-07');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('485-19-1182', '11', 'Kassi', 'Jurgensen', 'Bracco', '2010-03-07');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('239-75-4579', '13', 'Gabriel', 'Olfert', 'Seaward', '2016-11-06');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('358-44-0213', '19', 'Colan', 'Zorn', 'Pawels', '2008-06-12');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('788-39-3050', '17', 'Basil', 'Samwyse', 'Saenz', '2003-05-16');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('316-58-0035', '3', 'Ediva', 'Arends', 'Henderson', '2009-12-15');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('670-61-5574', '14', 'Tabbie', 'Doud', 'Amyes', '2003-01-09');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('555-63-5662', '2', 'Jodie', 'Dunridge', 'Quick', '2011-02-03');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('780-96-2518', '9', 'Colman', 'Shambroke', 'Oxtarby', '2005-11-13');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('872-27-0960', '12', 'Lorene', 'Mille', 'Jozwicki', '2009-03-27');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('603-40-5903', '20', 'Lisle', 'Dornin', 'Manoelli', '2007-10-06');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('598-43-3370', '4', 'Julianne', 'Tritten', 'Lippett', '2014-11-27');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('193-02-9176', '16', 'Ibbie', 'Cicchetto', 'Tomkinson', '2008-11-29');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('455-25-2505', '5', 'Bunnie', 'Gaffey', 'Hugin', '2014-01-02');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('304-45-3994', '3', 'Harman', 'Knagges', 'Bruckman', '2015-08-14');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('373-55-3074', '19', 'Oralee', 'Hunnisett', 'Rankin', '2011-03-15');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('707-47-6940', '18', 'Chlo', 'Coger', 'Gencke', '2006-04-11');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('394-71-7625', '14', 'Alyce', 'Hurford', 'Ayars', '2005-08-14');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('430-94-1801', '15', 'Jemmie', 'Solland', 'McGovern', '2002-12-17');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('678-76-4648', '6', 'Martainn', 'Madison', 'MacGaughie', '2014-01-28');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('799-98-3519', '2', 'Rollin', 'Scarre', 'Chilcotte', '2012-01-06');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('258-57-5408', '4', 'Ashley', 'Jurisch', 'Brundale', '2009-12-24');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('321-94-1946', '13', 'Cynthy', 'Dutnall', 'Sevitt', '2009-06-24');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('425-02-6620', '8', 'Addie', 'Dowdeswell', 'Rewcassell', '2006-04-07');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('343-66-7953', '1', 'Otto', 'Rummings', 'Maeer', '2004-04-11');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('268-59-7906', '11', 'Merrill', 'Adamczewski', 'Sabberton', '2009-06-15');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('190-89-7561', '12', 'Maressa', 'Normansell', 'Perrett', '2011-12-02');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('194-10-7743', '10', 'Efrem', 'Mungin', 'Carmont', '2006-01-11');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('249-59-0934', '9', 'Jeralee', 'Lishmund', 'Keynes', '2004-12-07');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('557-63-3090', '16', 'Flss', 'Collabine', 'Koschek', '2008-08-11');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('360-37-7730', '17', 'Fee', 'Molan', 'Mattioli', '2011-05-20');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('211-27-3785', '20', 'Lilah', 'Rottery', 'Egarr', '2008-12-02');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('272-31-5448', '7', 'Lin', 'Josephoff', 'Faivre', '2005-12-05');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('525-04-3351', '19', 'Dorene', 'Nizard', 'Gaythor', '2008-03-20');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('463-87-2688', '10', 'Louisette', 'Woodnutt', 'Borrett', '2014-07-14');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('183-76-1722', '7', 'Gayleen', 'Littleproud', 'Brundale', '2014-01-27');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('626-51-1849', '12', 'Elicia', 'Lober', 'Di Bartolommeo', '2013-01-05');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('130-28-5232', '9', 'Simone', 'Waldram', 'Bayle', '2010-12-18');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('827-87-2532', '3', 'Clarke', 'Grinvalds', 'Hamments', '2004-04-10');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('322-03-0856', '5', 'Darlene', 'Payne', 'Jirek', '2007-12-03');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('634-66-1584', '18', 'Mariana', 'Houldin', 'Harbert', '2006-08-13');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('359-43-6876', '8', 'Rafi', 'Beveridge', 'Beig', '2012-06-12');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('370-82-5068', '11', 'Leon', 'Ruckman', 'Reinhardt', '2014-04-27');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('882-35-6628', '13', 'Evered', 'Weaving', 'Bowering', '2007-08-05');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('800-11-5188', '4', 'Dirk', 'Mapowder', 'Constanza', '2006-07-06');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('584-60-4961', '15', 'Garnette', 'Newe', 'Fradson', '2011-04-12');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('745-91-3998', '1', 'Shurlock', 'Housego', 'Peploe', '2009-02-22');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('332-19-9816', '16', 'Luciano', 'Prugel', 'Baselio', '2010-10-29');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('414-83-4811', '2', 'Dacie', 'Burless', 'Mortel', '2009-10-22');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('319-82-0802', '6', 'Justina', 'Wooller', 'Dowe', '2010-10-31');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('554-03-4510', '17', 'Gladys', 'Timcke', 'De Courtney', '2006-02-04');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('547-56-7963', '20', 'Margaret', 'Hoodless', 'Trigg', '2007-02-19');
insert into PARTICIPANTE (CURP, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values ('528-52-1011', '14', 'Lindy', 'Danielou', 'Elphee', '2004-06-25');

-- COLABORAR
<<<<<<< Updated upstream
insert into colaborar values ('853-74-2727', 6, "secundaria");
insert into colaborar values ('853-74-2727', 6, "profesional");
insert into colaborar values ('853-74-2727', 6, "primaria");
insert into colaborar values ('853-74-2727', 6, "bachillerato");

insert into colaborar values ('853-74-2727', 2, "secundaria");
insert into colaborar values ('853-74-2727', 2, "profesional");
insert into colaborar values ('853-74-2727', 2, "primaria");
insert into colaborar values ('853-74-2727', 2, "bachillerato");

insert into colaborar values ('853-74-2727', 7, "secundaria");
insert into colaborar values ('853-74-2727', 7, "profesional");
insert into colaborar values ('853-74-2727', 7, "primaria");
insert into colaborar values ('853-74-2727', 7, "bachillerato");

insert into colaborar values ('744-39-0158', 6, "bachillerato");

-- call get_jury_code('mfoli0');

-- call get_jury_cat_teams("er");
-- select * from evento;

-- EVALUAR_EN
truncate table evaluar_en;


insert into evaluar_en values (1, 6, '853-74-2727');
insert into evaluar_en values (2, 6, null);
insert into evaluar_en values (3, 6, null);

insert into evaluar_en values (6, 7, null);
insert into evaluar_en values (7, 7, null);
=======
insert into COLABORAR values ('er', '1', 'bachillerato');
insert into COLABORAR values ('er', '1', 'primaria');
insert into COLABORAR (id_jurado, cod_evento, categoria) values ('8', '3', 'bachillerato');
insert into COLABORAR (id_jurado, cod_evento, categoria) values ('3', '5', 'bachillerato');
insert into COLABORAR (id_jurado, cod_evento, categoria) values ('6', '2', 'profesional');
insert into COLABORAR (id_jurado, cod_evento, categoria) values ('4', '4', 'secundaria');
insert into COLABORAR (id_jurado, cod_evento, categoria) values ('5', '1', 'primaria');
insert into COLABORAR (id_jurado, cod_evento, categoria) values ('7', '5', 'primaria');
insert into COLABORAR (id_jurado, cod_evento, categoria) values ('9', '4', 'secundaria');
insert into COLABORAR (id_jurado, cod_evento, categoria) values ('2', '2', 'primaria');
insert into COLABORAR (id_jurado, cod_evento, categoria) values ('1', '1', 'bachillerato');
insert into COLABORAR (id_jurado, cod_evento, categoria) values ('10', '3', 'secundaria');

-- EVALUAR_EN
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('23', '5', '3');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('30', '3', '4');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('12', '2', '1');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('8', '1', '5');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('32', '4', '2');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('26', '2', '4');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('1', '4', '1');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('14', '5', '3');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('33', '3', '5');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('7', '1', '2');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('50', '3', '3');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('44', '1', '1');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('27', '4', '2');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('38', '5', '5');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('24', '2', '4');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('36', '4', '5');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('39', '5', '3');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('11', '1', '2');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('4', '2', '1');
insert into EVALUAR_EN (cod_proyecto, cod_evento, id_jurado) values ('48', '3', '4');

call set_evento('EventoMamalonII:ElectricBongaloo', '2022-11-29', '2022-12-10', 'Santa Fe');
>>>>>>> Stashed changes
