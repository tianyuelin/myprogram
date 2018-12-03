/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/12/3 14:15:51                           */
/*==============================================================*/


drop table if exists navlist;

drop table if exists scene;

drop table if exists sceneComment;

drop table if exists strategy;

drop table if exists strategyComment;

drop table if exists users;

/*==============================================================*/
/* Table: navlist                                               */
/*==============================================================*/
create table navlist
(
   navId                int not null auto_increment,
   Name                 varchar(20),
   ParentId             int,
   primary key (navId)
);

/*==============================================================*/
/* Table: scene                                                 */
/*==============================================================*/
create table scene
(
   sceneId              int not null auto_increment,
   sname                varchar(50),
   addr                 varchar(50),
   ticketPrice          float,
   score                int,
   describee            varchar(1024),
   busroute             varchar(500),
   selfroute            varchar(500),
   primary key (sceneId)
);

/*==============================================================*/
/* Table: sceneComment                                          */
/*==============================================================*/
create table sceneComment
(
   scommId              int not null auto_increment,
   username             varchar(50),
   icon                 varchar(50),
   sceneId              int,
   content              varchar(500),
   primary key (scommId)
);

/*==============================================================*/
/* Table: strategy                                              */
/*==============================================================*/
create table strategy
(
   sId                  int not null auto_increment,
   username             varchar(50),
   icon                 varchar(50),
   stime                datetime,
   title                varchar(50),
   smallTitle1          varchar(50),
   content1             longtext,
   smallTitle2          varchar(50),
   content2             longtext,
   smallTitle3          varchar(50),
   content3             longtext,
   tag1                 varchar(20),
   tag2                 varchar(20),
   tag3                 varchar(20),
   avgScore             float,
   primary key (sId)
);

/*==============================================================*/
/* Table: strategyComment                                       */
/*==============================================================*/
create table strategyComment
(
   scId                 int not null auto_increment,
   sId                  int,
   username             varchar(50),
   icon                 varchar(50),
   sctime               datetime,
   score                int,
   content              varchar(500),
   primary key (scId)
);

/*==============================================================*/
/* Table: users                                                 */
/*==============================================================*/
create table users
(
   username             varchar(50),
   email                varchar(20) not null,
   password             varchar(20),
   icon                 varchar(50),
   signature            varchar(50),
   sex                  varchar(2),
   birthday             datetime,
   hobby                varchar(50),
   concernnum           int,
   fansnum              int,
   registtime           datetime,
   primary key (email)
);

