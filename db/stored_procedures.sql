use proyecto_bdd;

-- Stored procedure para traer todos los eventos con fecha de fin
-- anterior a la actual.
drop procedure if exists get_events_prior_to_current_date;
delimiter $$
create procedure get_events_prior_to_current_date() begin
   select * from EVENTO where fecha_fin < curdate();
end $$
delimiter ;
