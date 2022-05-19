/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     11/04/2022 23:03:39                          */
/*==============================================================*/
CREATE DATABASE parc_animaliers;

USE parc_animaliers;

drop table if exists ALIMENT;

drop table if exists ANIMAL;

drop table if exists CLIENT;

drop table if exists ESPECE;

drop table if exists NOURRITURE;

/*==============================================================*/
/* Table: ALIMENT                                               */
/*==============================================================*/
create table ALIMENT
(
   CODE_BARRE_ALIMENT   numeric(8,0) not null,
   MARQUE_ALIM          varchar(50),
   DATE_FAB_ALIM        date,
   DATE_EXP_ALIM        date,
   MODE_EMLPOI_ALIM     varchar(150),
   primary key (CODE_BARRE_ALIMENT)
);

/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL
(
   ID_ANIMAL            varchar(30) not null,
   CODE_ESPECE          numeric(8,0) not null,
   CIN_CLT              numeric(8,0),
   NOM_ANIMAL           varchar(30),
   DESC_ANIMAL          varchar(50),
   AGE_ANIMAL           numeric(8,0),
   TYPE_ANIMAL          varchar(30),
   RAISON_ADOPTION      varchar(100),
   primary key (ID_ANIMAL)
);

/*==============================================================*/
/* Table: CLIENT                                                */
/*==============================================================*/
create table CLIENT
(
   CIN_CLT              numeric(8,0) not null,
   NOM_CLT              varchar(30),
   PRENOM_CLT           varchar(1024),
   TEL_CLT              numeric(8,0),
   EMAIL_CLT            varchar(30),
   AGE_CLT              numeric(8,0),
   GENRE_CLT            varchar(1024),
   ADRESSE_CLT          varchar(1024),
   primary key (CIN_CLT)
);

/*==============================================================*/
/* Table: ESPECE                                                */
/*==============================================================*/
create table ESPECE
(
   CODE_ESPECE          numeric(8,0) not null,
   LIBELLE_ESPECE       varchar(1024),
   primary key (CODE_ESPECE)
);

/*==============================================================*/
/* Table: NOURRITURE                                            */
/*==============================================================*/
create table NOURRITURE
(
   
   ID_ANIMAL            varchar(30) not null,
   CODE_BARRE_ALIMENT   numeric(8,0) not null,
   QUANTITE             numeric(10,0),
   primary key (ID_ANIMAL, CODE_BARRE_ALIMENT)
);

alter table ANIMAL add constraint FK_ADPTER foreign key (CIN_CLT)
      references CLIENT (CIN_CLT) on delete cascade on update cascade;

alter table ANIMAL add constraint FK_APPARTENIR foreign key (CODE_ESPECE)
      references ESPECE (CODE_ESPECE) on delete cascade on update cascade;

alter table NOURRITURE add constraint FK_NOURRITURE foreign key (ID_ANIMAL)
      references ANIMAL (ID_ANIMAL) on delete cascade on update cascade;

alter table NOURRITURE add constraint FK_NOURRITURE2 foreign key (CODE_BARRE_ALIMENT)
      references ALIMENT (CODE_BARRE_ALIMENT) on delete cascade on update cascade;

