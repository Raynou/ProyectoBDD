-- EVENTO
insert into EVENTO (cod_evento, fecha, lugar) values (1, '2022-04-16', 'Setúbal');
insert into EVENTO (cod_evento, fecha, lugar) values (2, '2022-08-19', 'Puhechang');
insert into EVENTO (cod_evento, fecha, lugar) values (3, '2022-02-08', 'Krajan Dua Sumbersari');
insert into EVENTO (cod_evento, fecha, lugar) values (4, '2022-06-27', 'Danxi');
insert into EVENTO (cod_evento, fecha, lugar) values (5, '2022-09-02', 'Baniachang');

-- JURADO

insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (1, 'Yulma', 'Avent', 'Thackston');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (2, 'Dody', 'Brunsdon', null);
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (3, 'Madel', 'Rollings', 'Djorvic');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (4, 'Alena', 'Dooher', 'Adelberg');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (5, 'Christel', 'Valente', 'Catlette');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (6, 'Jaquith', 'Dechelle', 'Pace');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (7, 'Sylvia', 'Cline', 'Rawlingson');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (8, 'Cara', 'Scaysbrook', 'Tiner');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (9, 'Kristien', 'Charsley', 'Stoyle');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (10, 'Dev', 'Admans', 'Juggings');

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

-- CAT_PROGRAMACION

insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('39', '5', 4, 2, 1, 2);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('48', '3', 1, 1, 2, 0);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('27', '1', 4, 2, 0, 1);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('44', '4', 2, 1, 2, 1);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('13', '2', 3, 1, 0, 0);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('37', '3', 2, 0, 1, 1);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('28', '1', 4, 0, 0, 0);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('47', '5', 2, 0, 2, 1);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('49', '2', 3, 1, 2, 2);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('20', '4', 2, 2, 2, 0);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('10', '3', 2, 1, 1, 0);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('40', '1', 0, 1, 1, 2);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('15', '4', 2, 0, 0, 0);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('45', '5', 1, 0, 0, 1);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('17', '2', 1, 0, 0, 0);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('14', '4', 2, 2, 0, 0);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('6', '2', 1, 2, 1, 2);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('19', '5', 0, 2, 1, 0);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('12', '3', 2, 2, 0, 2);
insert into CAT_PROGRAMACION (cod_proyecto, cod_evento, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values ('29', '1', 3, 2, 1, 0);

-- CAT_DISENNO

insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('24', '5', 3, 0);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('12', '3', 2, 1);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('10', '1', 2, 2);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('43', '4', 5, 3);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('14', '2', 4, 0);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('8', '5', 3, 3);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('33', '4', 0, 5);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('16', '2', 1, 3);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('28', '3', 3, 2);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('20', '1', 1, 5);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('37', '2', 5, 3);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('6', '5', 3, 4);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('18', '1', 4, 5);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('50', '4', 5, 5);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('47', '3', 4, 1);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('26', '3', 0, 1);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('31', '1', 3, 1);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('48', '5', 4, 0);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('35', '4', 4, 2);
insert into CAT_DISENNO (cod_proyecto, cod_evento, cal_bitacora, cal_medio_dig) values ('40', '2', 5, 2);

-- CAT_CONSTRUCCION

insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('45', '2', 1, 4);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('35', '4', 4, 0);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('16', '3', 4, 4);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('42', '5', 2, 3);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('5', '1', 1, 0);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('32', '5', 2, 2);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('37', '4', 2, 0);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('29', '1', 5, 4);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('1', '2', 1, 2);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('34', '3', 3, 3);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('24', '4', 1, 0);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('17', '1', 4, 1);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('40', '5', 4, 3);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('47', '3', 2, 0);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('36', '2', 1, 0);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('38', '2', 1, 0);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('18', '4', 2, 5);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('49', '3', 4, 2);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('46', '5', 2, 5);
insert into CAT_CONSTRUCCION (cod_proyecto, cod_evento, cal_inspeccion, cal_libreta_ing) values ('11', '1', 0, 0);

-- PARTICIPANTE

insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (1, '3', 'Cybil', 'Truter', 'Rattry', '2012-11-25');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (2, '19', 'Matelda', 'Larvor', 'Worling', '2016-02-24');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (3, '17', 'Staffard', 'Drakard', 'Ferreri', '2007-05-26');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (4, '8', 'Martina', 'Sommerville', 'Gres', '2011-07-08');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (5, '2', 'Edita', 'Hanselmann', 'Batson', '2004-09-14');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (6, '13', 'Joelie', 'Seaman', 'McLauchlin', '2004-04-27');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (7, '12', 'Astra', 'Jervis', 'McGuirk', '2009-05-10');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (8, '18', 'Emelda', 'Jolliffe', 'Bimrose', '2009-10-07');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (9, '10', 'Mignon', 'Helis', 'Wilprecht', '2007-08-03');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (10, '4', 'Marney', 'MacNeish', 'Henstridge', '2008-05-29');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (11, '11', 'Jacklyn', 'Wasbey', 'Achurch', '2013-08-30');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (12, '5', 'Torrin', 'Cornelisse', 'Goroni', '2013-02-09');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (13, '9', 'Lynde', 'Alwood', 'Bodicam', '2007-04-03');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (14, '16', 'Dita', 'Prene', 'Trahair', '2003-01-12');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (15, '20', 'Gwen', 'Haugh', 'Willder', '2016-08-12');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (16, '6', 'Nadine', 'O''Hallihane', 'Bramwich', '2010-06-26');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (17, '7', 'Nataniel', 'Daniaud', 'Essery', '2005-09-27');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (18, '14', 'Sig', 'Daout', 'Cantle', '2003-09-13');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (19, '1', 'Budd', 'Moriarty', 'Stanborough', '2005-08-20');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (20, '15', 'Ashlie', 'Hambrick', 'Somers', '2006-03-15');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (21, '7', 'Lacey', 'Hadaway', 'Iapico', '2010-03-30');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (22, '17', 'Aron', 'Sibley', 'Grisdale', '2015-07-21');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (23, '1', 'Kipper', 'Castilljo', 'Cheavin', '2016-05-28');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (24, '11', 'Shelby', 'McFee', 'Frantz', '2011-06-23');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (25, '2', 'Bradly', 'Blissitt', 'Gildea', '2004-08-16');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (26, '18', 'Dionisio', 'Scoterbosh', 'Korneichuk', '2012-10-17');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (27, '15', 'Stu', 'Zuanazzi', 'Muglestone', '2012-02-07');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (28, '13', 'Aron', 'Giacopetti', 'Godney', '2008-07-26');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (29, '14', 'Foster', 'Gobeaux', 'Gretham', '2010-11-17');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (30, '4', 'Dianemarie', 'Barbera', 'Scruby', '2011-08-20');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (31, '6', 'Betsey', 'Rowat', 'Vanyashkin', '2003-01-14');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (32, '10', 'Jaclyn', 'Yo', 'Cousans', '2006-05-09');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (33, '8', 'Shellysheldon', 'Scouse', 'Sutherland', '2006-04-15');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (34, '5', 'Ettore', 'Biskupiak', 'Barney', '2013-04-29');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (35, '9', 'Lory', 'Sutch', 'Finney', '2014-05-23');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (36, '12', 'Donetta', 'Balchen', 'Cherrie', '2016-08-14');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (37, '20', 'Phillipe', 'Glazyer', 'Blaik', '2011-10-10');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (38, '16', 'Sybilla', 'Cestard', 'Lesley', '2002-12-05');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (39, '3', 'Alysa', 'Chazerand', 'Trainor', '2011-07-23');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (40, '19', 'Bev', 'Ornillos', 'Balchin', '2008-05-31');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (41, '3', 'Collen', 'Veare', 'Mawman', '2005-08-06');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (42, '18', 'Ida', 'Arndell', 'Lorenzini', '2016-11-03');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (43, '17', 'Corny', 'Roggers', 'Gowar', '2005-06-19');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (44, '9', 'Wyndham', 'Vasenin', 'Upfold', '2011-04-21');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (45, '19', 'Ansel', 'Heinlein', 'Setford', '2016-09-22');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (46, '16', 'Deloria', 'Gino', 'Mantripp', '2012-03-03');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (47, '13', 'Imogene', 'Chattoe', 'Piletic', '2013-10-27');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (48, '10', 'Jamey', 'Crapper', 'Trazzi', '2012-05-12');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (49, '8', 'Jasper', 'Kyteley', 'Short', '2005-12-01');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (50, '15', 'Libbi', 'Mussalli', 'Neenan', '2014-12-24');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (51, '1', 'Stacee', 'Basson', 'Deshorts', '2015-06-17');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (52, '5', 'Abbey', 'Morrieson', 'Colquyte', '2012-11-18');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (53, '4', 'Durant', 'Currier', 'Thomazin', '2003-03-15');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (54, '2', 'Feliza', 'Chatteris', 'Round', '2011-08-06');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (55, '7', 'Wilden', 'Spykins', 'Collcutt', '2007-02-10');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (56, '14', 'Jenica', 'Hatherall', 'Cadge', '2014-12-30');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (57, '20', 'Annamaria', 'Grima', 'Liddiard', '2004-01-07');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (58, '6', 'Krispin', 'Dominka', 'MacLice', '2009-02-25');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (59, '11', 'Christiana', 'Loft', 'Austins', '2005-04-19');
insert into PARTICIPANTE (num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac) values (60, '12', 'Velma', 'Basset', 'Boshard', '2004-02-08');

-- COLABORAR
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