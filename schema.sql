drop schema if exists proyecto_bdd;
create schema proyecto_bdd;
use proyecto_bdd;

create table EVENTO(

    cod_evento int primary key auto_increment,
    fecha date not null ,
    lugar varchar(30) not null
);

create table EQUIPO(

    cod_equipo int primary key auto_increment,
    categoria enum('Primaria', 'Secundaria', 'Bachillerato', 'Profesional') not null ,
    institucion varchar(20) not null

);

create table PARTICIPANTE(
    num_participante int primary key auto_increment,
    cod_equipo int not null,
    nombre_pila varchar(10) not null ,
    apellido_1 varchar(10) not null,
    apellido_2 varchar(10),
    fecha_nac date not null,

    constraint FK_EQUIPO_DE_PARTICIPANTE
    foreign key (cod_equipo) references EQUIPO(cod_equipo)
    on delete cascade on update cascade
);

create table PROYECTO(
    cod_proyecto int primary key auto_increment,
    nombre_proyecto varchar(30) not null ,
    cod_equipo int not null,

    constraint FK_EQUIPO_DE_PROYECTO
    foreign key (cod_equipo) references EQUIPO(cod_equipo)
    on delete cascade on update cascade
);

create table JURADO(

    id_jurado int primary key auto_increment,
    nombre_pila varchar(10) not null ,
    apellido_1 varchar(10) not null ,
    apellido_2 varchar(10)

);

create table COLABORAR(
    id_jurado int not null ,
    cod_evento int not null ,
    categoria enum('Primaria', 'Secundaria', 'Bachillerato', 'Profesional'),

    constraint FK_JURADO_COLABORA
    foreign key (id_jurado) references JURADO(id_jurado)
    on delete cascade on update cascade ,

    constraint FK_EVENTO_COLABORADOR
    foreign key (cod_evento) references EVENTO(cod_evento)
    on delete cascade on update cascade
);

-- Tablas para las categorías de evaluación

create table CAT_DISENNO(
    id_eva_disenno int primary key auto_increment,
    cal_bitacora int not null ,
    cal_medio_dog int not null
);

create table CAT_PROGRAMACION(
    id_eva_prog int primary key auto_increment,
    cal_inspeccion int not null,
    cal_sistema_aut int not null,
    cal_demostracion int not null,
    cal_sistema_man int not null

);

create table CAT_CONSTRUCCION(
    id_eva_cons int primary key auto_increment,
    cal_inspeccion int not null,
    cal_libreta_ing int not null
);

-- Tabla que te dice que proyectos partciparon en que evento.

create table EVALUAR_EN(
    cod_proyecto int,
    cod_evento int,
    id_jurado int,
    id_eva_prog int not null unique,
    id_eva_disenno int not null unique ,
    id_eva_cons int not null unique ,

    constraint FK_PROYECTO_PARTICIPA
    foreign key (cod_proyecto) references PROYECTO(cod_proyecto)
    on delete cascade on update cascade ,

    constraint FK_EVENTO_TRANSCURRIDO
    foreign key (cod_evento) references EVENTO(cod_evento)
    on delete cascade on update cascade ,

    constraint FK_JURADO_EVALUO
    foreign key (id_jurado) references JURADO(id_jurado)
    on update cascade on delete set null ,

    constraint FK_CAT_PROG
    foreign key (id_eva_prog) references CAT_PROGRAMACION(id_eva_prog)
    on delete cascade on update cascade ,

    constraint FK_CAT_DISE
    foreign key (id_eva_disenno) references CAT_DISENNO(id_eva_disenno)
    on delete cascade on update cascade,

    constraint FK_CAT_CONS
    foreign key (id_eva_cons) references CAT_CONSTRUCCION(id_eva_cons)
    on delete cascade on update cascade,

    primary key (cod_proyecto, cod_evento)
);