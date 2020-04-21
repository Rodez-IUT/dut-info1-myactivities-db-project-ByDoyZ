CREATE FUNCTION gds.insert_salle (un_nom varchar(250), un_nb_personnes_max integer) RETURNS gds.salle AS $$
    INSERT INTO gds.salle (nom,nb_personnes_max,date_creation,date_modification,id)
    VALUES (un_nom,un_nb_personnes_max,now(),now(),nextval('gds.salle_seq'));
    SELECT * FROM gds.salle
$$ LANGUAGE SQL;

select * from gds.insert_salle('paquerette', 12);
select * from gds.insert_salle('rose', 6);
select * from gds.insert_salle('dalhia', 24);
select * from gds.insert_salle('tulipe', 32);

