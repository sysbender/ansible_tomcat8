drop table visitors;
drop table visites;
drop table APPARTEMENTS;

  CREATE TABLE "VISITORS" 
   (	"VISITORID" NUMBER(10,0) NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(255 BYTE), 
	"NOM" VARCHAR2(255 BYTE), 
	"PRENOM" VARCHAR2(255 BYTE), 
	"TELEPHONE" VARCHAR2(255 BYTE), 
	 PRIMARY KEY ("VISITORID")
   ) ;
  
  CREATE TABLE "APPARTEMENTS" 
   (	"IDAPPARTEMENT" NUMBER(3,0), 
	"VILLE" VARCHAR2(20 BYTE), 
	"TYPEAPPARTEMENT" VARCHAR2(5 BYTE), 
	"ADRESSE" VARCHAR2(30 BYTE) CONSTRAINT "APPADRESSE" NOT NULL ENABLE, 
	"IMAGE" VARCHAR2(15 BYTE), 
	"POSITION" VARCHAR2(10 BYTE), 
	"PRIXBAIL" BINARY_DOUBLE CONSTRAINT "APPPRIXBAIL" NOT NULL ENABLE, 
	"SUPERFICIE" NUMBER(4,0), 
	"NOMBREDISPONIBLE" NUMBER(4,0), 
	"EXISTENCEASCENSEUR" VARCHAR2(10 BYTE), 
	 CONSTRAINT "PKAPP" PRIMARY KEY ("IDAPPARTEMENT")  
   );
  
  CREATE TABLE "VISITES" 
   (	"VISITEID" NUMBER(3,0) NOT NULL ENABLE, 
	"VISITEDATE" VARCHAR2(10 BYTE), 
	"VISITEHEURE" VARCHAR2(6 BYTE), 
	"VISITORID" NUMBER(10,0), 
	"IDAPPARTEMENT" NUMBER(3,0),
	 PRIMARY KEY ("VISITEID"),
	 CONSTRAINT "FK_VISITORID" FOREIGN KEY ("VISITORID")
	  REFERENCES "VISITORS" ("VISITORID") ENABLE,
	  CONSTRAINT "FK_APPARTEMENT" FOREIGN KEY ("IDAPPARTEMENT")
	  REFERENCES "APPARTEMENTS" ("IDAPPARTEMENT") ENABLE
   )  ;
  
insert into appartements VALUES(1,'Montreal','3 1/2','2461 boul edouard Monpetit','apt1.jpg','2em',1500,42,1,'oui');
insert into appartements VALUES(2,'Brossard','4 1/2','2461 boul edouard Monpetit','apt1.jpg','1em',800,42,1,'oui');
insert into appartements VALUES(3,'Montreal','2 1/2','2461 boul henry','apt1.jpg','3em',800,42,1,'oui');
insert into appartements VALUES(4,'Laval','3 1/2','2461 boul edouard Monpetit','apt1.jpg','3em',1300,40,1,'oui');
exit;

