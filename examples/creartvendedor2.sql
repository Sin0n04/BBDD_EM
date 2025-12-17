create table tvendedor2
(
	COD_VEN		CHAR(3) 	NOT NULL,
	NOM_VEN		CHAR(25) 	NOT NULL,
	PORCEN		NUMBER(4),
	TITULACION	CHAR(10),
	SUPERIOR	CHAR(3),
	CONSTRAINT CP_TVENDEDOR2 PRIMARY KEY (COD_VEN),
	CONSTRAINT CA_TVENDEDOR2_TVENDEDOR2 FOREIGN KEY(SUPERIOR)REFERENCES TVENDEDOR2(COD_VEN)
);


insert into tvendedor2 (COD_VEN, NOM_VEN, PORCEN, TITULACION) values
('001','CORZAN BLASCO M.C.', 10, 'SUPERIOR');
insert into tvendedor2 values ('002','PEREZ DIRAC A.', 5, 'ELEMENTAL', '001');
insert into tvendedor2 values ('003', 'SOTO LOIS F.', 10, 'MEDIA','001');
insert into tvendedor2 values ('004', 'PRADOS GOMEZ R.', 7, 'ELEMENTAL', '003');
insert into tvendedor2 values ('006', 'LOPEZ MAS C.', 10, 'MEDIA', '003');
insert into tvendedor2 (COD_VEN, NOM_VEN, PORCEN, TITULACION) values
('005', 'TORRES PAZ L.', 15, 'SUPERIOR');
COMMIT;
