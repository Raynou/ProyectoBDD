-- EVENTO
insert into EVENTO (cod_evento, fecha, lugar) values (1, '2022-10-01', 'Buriram');
insert into EVENTO (cod_evento, fecha, lugar) values (2, '2021-12-12', 'Stanley');
insert into EVENTO (cod_evento, fecha, lugar) values (3, '2022-02-16', 'Wakefield');
insert into EVENTO (cod_evento, fecha, lugar) values (4, '2022-01-23', 'Calais');
insert into EVENTO (cod_evento, fecha, lugar) values (5, '2022-06-23', 'Qidi');

-- JURADO

insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (1, 'Shell', 'Cronin', 'McGiveen');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (2, 'Bucky', 'Bedinham', null);
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (3, 'Brendis', 'Urridge', null);
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (4, 'Cam', 'Ionnidis', 'Coaster');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (5, 'Gabi', 'Blacklock', 'Duplan');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (6, 'Billi', 'Fisby', 'Topham');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (7, 'Shelby', 'Kunrad', 'Romer');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (8, 'Robbin', 'Chudleigh', 'Jenik');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (9, 'Vivienne', 'Keppel', 'McClifferty');
insert into JURADO (id_jurado, nombre_pila, apellido_1, apellido_2) values (10, 'Nannie', 'Rhyme', 'Jirik');

-- EQUIPO
insert into EQUIPO (cod_equipo, categoria, institucion) values (1, 'profesional', 'Medical Academy in Lublin');
insert into EQUIPO (cod_equipo, categoria, institucion) values (2, 'primaria', 'University of Perpetual Help, System Dalta');
insert into EQUIPO (cod_equipo, categoria, institucion) values (3, 'secundaria', 'Universidad Autónoma Juan Misael Saracho');
insert into EQUIPO (cod_equipo, categoria, institucion) values (4, 'secundaria', 'Albright College');
insert into EQUIPO (cod_equipo, categoria, institucion) values (5, 'secundaria', 'University of Minnesota - Crookston');
insert into EQUIPO (cod_equipo, categoria, institucion) values (6, 'primaria', 'Universidad Insurgentes Plantel León');
insert into EQUIPO (cod_equipo, categoria, institucion) values (7, 'secundaria', 'Université de Skikda');
insert into EQUIPO (cod_equipo, categoria, institucion) values (8, 'secundaria', 'Hachinohe Institute of Technology');
insert into EQUIPO (cod_equipo, categoria, institucion) values (9, 'profesional', 'Universität Trier');
insert into EQUIPO (cod_equipo, categoria, institucion) values (10, 'bachillerato', 'University of Texas at Brownsville');
insert into EQUIPO (cod_equipo, categoria, institucion) values (11, 'secundaria', 'Pädagogische Hochschule Ludwigsburg');
insert into EQUIPO (cod_equipo, categoria, institucion) values (12, 'secundaria', 'Tallinn University');
insert into EQUIPO (cod_equipo, categoria, institucion) values (13, 'primaria', 'Instituto Superior de Psicologia Aplicada');
insert into EQUIPO (cod_equipo, categoria, institucion) values (14, 'primaria', 'Tiffin University Prague');
insert into EQUIPO (cod_equipo, categoria, institucion) values (15, 'profesional', 'Technical University in Kosice');
insert into EQUIPO (cod_equipo, categoria, institucion) values (16, 'secundaria', 'Fort Hays State University');
insert into EQUIPO (cod_equipo, categoria, institucion) values (17, 'secundaria', 'Musashi University');
insert into EQUIPO (cod_equipo, categoria, institucion) values (18, 'primaria', 'Academy of Humanities and Economics in Lodz');
insert into EQUIPO (cod_equipo, categoria, institucion) values (19, 'profesional', 'William Penn College');
insert into EQUIPO (cod_equipo, categoria, institucion) values (20, 'primaria', 'Thomas Aquinas College');


-- CAT_PROGRAMACION
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (1, 4, 2, 0, 2);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (2, 3, 2, 1, 1);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (3, 4, 1, 0, 1);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (4, 3, 2, 0, 1);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (5, 0, 1, 2, 1);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (6, 2, 2, 1, 2);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (7, 1, 2, 0, 0);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (8, 4, 2, 0, 1);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (9, 4, 1, 1, 1);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (10, 0, 1, 2, 0);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (11, 1, 2, 0, 2);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (12, 1, 2, 1, 0);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (13, 2, 0, 1, 2);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (14, 2, 0, 1, 2);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (15, 2, 1, 2, 0);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (16, 0, 1, 1, 2);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (17, 2, 0, 2, 2);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (18, 2, 0, 0, 0);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (19, 4, 2, 2, 1);
insert into CAT_PROGRAMACION (id_eva_prog, cal_inspeccion, cal_sistema_aut, cal_demostracion, cal_sistema_man) values (20, 1, 0, 2, 1);

-- CAT_DISENNO


-- CAT_CONSTRUCCION

-- PARTICIPANTE

-- PROYECTO

-- COLABORAR

-- EVALUAR_EN
