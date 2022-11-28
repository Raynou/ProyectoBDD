drop schema if exists proyecto_bdd;
create schema proyecto_bdd;
use proyecto_bdd;

create table EVENTO(

    cod_evento int primary key auto_increment,
	rfecha_inicio date not null ,
    fecha_fin date not null,
    lugar varchar(255) not null
);

create table EQUIPO(

    cod_equipo int primary key auto_increment,
    categoria enum('primaria', 'secundaria', 'bachillerato', 'profesional') not null ,
    institucion varchar(255) not null

);

create table PARTICIPANTE(
    num_participante int primary key auto_increment,
    cod_equipo int not null,
    nombre_pila varchar(255) not null ,
    apellido_1 varchar(255) not null,
    apellido_2 varchar(255),
    fecha_nac date not null,

    constraint FK_EQUIPO_DE_PARTICIPANTE
    foreign key (cod_equipo) references EQUIPO(cod_equipo)
    on delete cascade on update cascade
);

create table PROYECTO(
    cod_proyecto int primary key auto_increment,
    nombre_proyecto varchar(255) not null ,
    cod_equipo int not null,

    constraint FK_EQUIPO_DE_PROYECTO
    foreign key (cod_equipo) references EQUIPO(cod_equipo)
    on delete cascade on update cascade
);

create table JURADO(

    id_jurado int primary key auto_increment,
    nombre_pila varchar(255) not null ,
    apellido_1 varchar(255) not null ,
    apellido_2 varchar(255)

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

-- Tables for evaluation categories

create table CAT_DISENNO(
    cod_proyecto int not null ,
    cod_evento int not null,
    cal_bitacora int not null check ( cal_bitacora <= 5 ),
    cal_medio_dig int not null check ( cal_medio_dig <= 5 ),

    constraint FK_PROYECTO_CAT_DISENNO
    foreign key (cod_proyecto) references PROYECTO(cod_proyecto)
    on delete cascade on update cascade,

    constraint FK_EVENTO_CAT_DISENNO
    foreign key (cod_evento) references EVENTO(cod_evento)
    on delete cascade on update cascade,

    primary key (cod_proyecto, cod_evento)
);

create table CAT_PROGRAMACION(
    cod_proyecto int not null ,
    cod_evento int not null,
    cal_inspeccion int not null check ( cal_inspeccion <= 4 ),
    cal_sistema_aut int not null check ( cal_sistema_aut <= 2 ),
    cal_demostracion int not null check ( cal_demostracion <= 2 ),
    cal_sistema_man int not null check ( cal_sistema_man <= 2 ),

    constraint FK_PROYECTO_CAT_PROGRAMACION
    foreign key (cod_proyecto) references PROYECTO(cod_proyecto)
    on delete cascade on update cascade,

    constraint FK_EVENTO_CAT_PROGRAMACION
    foreign key (cod_evento) references EVENTO(cod_evento)
    on delete cascade on update cascade,

    primary key (cod_proyecto, cod_evento)

);

create table CAT_CONSTRUCCION(
    cod_proyecto int not null ,
    cod_evento int not null,
    cal_inspeccion int not null check ( cal_inspeccion <= 5 ),
    cal_libreta_ing int not null check ( cal_libreta_ing <= 5 ),

    constraint FK_PROYECTO_CAT_CONSTRUCCION
    foreign key (cod_proyecto) references PROYECTO(cod_proyecto)
    on delete cascade on update cascade,

    constraint FK_EVENTO_CAT_CONSTRUCCION
    foreign key (cod_evento) references EVENTO(cod_evento)
    on delete cascade on update cascade,

    primary key (cod_proyecto, cod_evento)
);

-- Tabla que te dice que proyectos partciparon en que evento.

create table EVALUAR_EN(
    cod_proyecto int,
    cod_evento int,
    id_jurado int,

    constraint FK_PROYECTO_PARTICIPA
    foreign key (cod_proyecto) references PROYECTO(cod_proyecto)
    on delete cascade on update cascade ,

    constraint FK_EVENTO_TRANSCURRIDO
    foreign key (cod_evento) references EVENTO(cod_evento)
    on delete cascade on update cascade ,

    constraint FK_JURADO_EVALUO
    foreign key (id_jurado) references JURADO(id_jurado)
    on update cascade on delete set null ,

    primary key (cod_proyecto, cod_evento)
);
