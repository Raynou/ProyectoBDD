use proyecto_bdd;

-- Stored procedure para traer todos los eventos con fecha de fin
-- anterior a la actual.
drop procedure if exists get_events_prior_to_current_date;
delimiter $$
create procedure get_events_prior_to_current_date() begin
   select * from EVENTO where fecha_fin < curdate();
end $$
delimiter ;

-- Insertar equipos

/*
 @param cat - La categoría del equipo
 @param inst - Institución de procedencia del equipo
*/

drop procedure if exists set_team;
delimiter $$
create procedure set_team(
    in cat enum('primaria', 'secundaria', 'bachillerato', 'profesional'),
    in inst varchar(255)
) begin

    insert into EQUIPO (categoria, institucion) values (cat, inst);

end $$
delimiter ;

-- Insertar integrante
/*
 @param curp - CURP
 @param cod_e - cod_equipo
 @param nom_pila - nombre_pila
 @param p_apellido - primer_apellido
 @param s_apellido - segundo_apellido
 @param f_nac - fecha_nac
*/
drop procedure if exists set_participant;
delimiter $$
create procedure set_participant(
    in curp varchar(18),
    in cod_e int,
    in nom_pila varchar(255),
    in p_apellido varchar(255),
    in s_apellido varchar(255),
    in f_nac date
)
begin
    insert into PARTICIPANTE values (curp, cod_e, nom_pila, p_apellido, s_apellido, f_nac);
end $$
delimiter ;

-- Obtener equipo más recientemente insertado
drop procedure if exists get_last_team;
delimiter $$
create procedure get_last_team()
begin
    select cod_equipo, categoria from EQUIPO order by cod_equipo desc limit 1;
end $$
delimiter ;