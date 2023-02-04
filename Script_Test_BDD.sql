-- NiveauVisiteur

insert into NiveauVisiteur (id_niveau,nom_niveau) values ('P','primaire');
insert into NiveauVisiteur (id_niveau,nom_niveau) values ('C','college');
insert into NiveauVisiteur (id_niveau,nom_niveau) values ('L','lycee');
insert into NiveauVisiteur (id_niveau,nom_niveau) values ('PC','primaire et college');
insert into NiveauVisiteur (id_niveau,nom_niveau) values ('PL','primaire et lycee');
insert into NiveauVisiteur (id_niveau,nom_niveau) values ('LC','lycee et college');
insert into NiveauVisiteur (id_niveau,nom_niveau) values ('PCL','primaire, college et lycee');

-- Etablissement

insert into Etablissement values ('Lycee Polyvalent Jean Jaures','Argenteuil',78018);
insert into Etablissement values ('Lycee Pierre','Argenteuil',78018);
insert into Etablissement values ('College Edouart Vaillant','Gennevilliers',92230);

-- Professeur

insert into Professeur (mail,nom,prenom,etablissement,niveau,nombreEleve,mdp) values ('Dupont@gmail.com','Dupont','Nopud','Lycee Polyvalent Jean Jaures','L',25,'$2y$13$keOo5XFZQ4NDn.5WSMp/O.HitFYwXolhuqoxvrTnaLLjyKyyGkqdO');
insert into Professeur (mail,nom,prenom,etablissement,niveau,nombreEleve,mdp) values ('Pierre@gmail.com','Pierre','Pierrot','Lycee Pierre','L',25,'$2y$13$keOo5XFZQ4NDn.5WSMp/O.HitFYwXolhuqoxvrTnaLLjyKyyGkqdO');

-- Superviseur

insert into Superviseur (surnom) values ('First');

-- Stand Plusieurs user ?? Plusieurs niveau ???

insert into Stand (nom_stand,description,niveau_visiteur,capacite,allDay,duree,interSession,pauseDebut,pauseFin) values ('Jeu de go','Ce jeu est vraiment tres dur et on apprend plein de truc sympa en rapport au math !','C',10,true,45,0,'12:30:00','13:15:00');
insert into Stand (nom_stand,description,niveau_visiteur,capacite,allDay,duree,interSession,pauseDebut,pauseFin) values ('Origami','On fait des origamis et on apprend plein de truc sympa en rapport au math !','L',10,true,30,10,'12:00:00','12:45:00');
insert into Stand (nom_stand,description,niveau_visiteur,capacite,allDay,duree,interSession,pauseDebut,pauseFin) values ('Jeu de ga','Ce jeu est vraiment tres dur comme le jeu de go mais plus dur et on apprend plein de truc sympa en rapport au math !','L',10,true,30,10,'12:00:00','12:45:00');

-- Creneau 

insert into Creneau (nbPlace_restant,date_creneau,heure_debut,heure_fin,id_stand,id_superviseur) values (10,'2022-10-10','14:00:00','14:30:00',1,1);
insert into Creneau (nbPlace_restant,date_creneau,heure_debut,heure_fin,id_stand,id_superviseur) values (10,'2022-10-10','15:00:00','15:30:00',2,1);
insert into Creneau (nbPlace_restant,date_creneau,heure_debut,heure_fin,id_stand,id_superviseur) values (10,'2022-10-10','15:00:00','15:30:00',2,1);

-- Reservation

insert into Reservation (id_creneau,id_professeur,nbPlace_prise) values (1,2,4);
insert into Reservation (id_creneau,id_professeur,nbPlace_prise) values (2,1,4);

-- Test

drop table if EXISTS tempo;
create table tempo (Horodateur varchar(150),nom_stand varchar(150),PresentJeudi varchar(150),PresentVendredi varchar(150),description varchar(1500),niveau varchar(150),capacite varchar(150),Jeudi varchar(150),Vendredi varchar(150),Samedi varchar(150),Dimanche varchar(150),allDay varchar(150),duree int,intersession varchar(150),pausedebut varchar(150),pausefin varchar(150),URL varchar(150));

-- Horodateur,nom_stand,PresentJeudi,PresentVendredi,description,niveau,capacite,Jeudi,Vendredi,Samedi,Dimanche,allDay,duree,intersession,pausedebut,pausefin,URL
\COPY tempo(Horodateur,nom_stand,PresentJeudi,PresentVendredi,description,niveau,capacite,Jeudi,Vendredi,Samedi,Dimanche,allDay,duree,intersession,pausedebut,pausefin,URL) FROM 'data.csv' DELIMITER ',' CSV HEADER;

