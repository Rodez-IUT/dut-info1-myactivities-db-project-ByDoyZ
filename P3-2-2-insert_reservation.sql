CREATE FUNCTION gds.insert_reservation (un_date_debut timestamp without time zone, un_date_fin timestamp without time zone, un_nom_de_salle varchar(250)) RETURNS gds.salle AS $$
    INSERT INTO gds.reservation (date_debut,date_fin,date_creation,date_modification,salle_id)
    VALUES (un_date_debut, un_date_fin, un_nom_de_salle, now(), now(), nextval('gds.salle_seq'));
    SELECT * FROM gds.reservation
$$ LANGUAGE SQL;

select * from gds.insert_reservation('2020-04-24 15:00:00','2020-04-24 17:00:00','paquerette');
select * from gds.insert_reservation('2020-04-22 15:00:00','2020-04-22 17:00:00','paquerette');
select * from gds.insert_reservation('2020-04-22 12:00:00','2020-04-22 14:00:00','rose');
select * from gds.insert_reservation('2020-04-23 18:00:00','2020-04-22 19:00:00','tulipe');
select * from gds.insert_reservation('2020-04-25 14:00:00','2020-04-25 17:00:00','dalhia');
select * from gds.insert_reservation('2020-04-22 12:00:00','2020-04-22 14:00:00','dalhia');
