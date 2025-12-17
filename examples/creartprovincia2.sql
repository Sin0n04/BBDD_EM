create table tprovincia2
(
	CODIGO		char(2) 	NOT NULL,
	NOMBRE		char(25) 	NOT NULL,
	TOTAL_COMPRA	number(10) 	NOT NULL,
	CONSTRAINT CP_TPROVINCIA2 PRIMARY KEY (CODIGO))
/

insert into tprovincia2 values ('HU', 'HUESCA', 1000000);
insert into tprovincia2 values ('Z', 'ZARAGOZA', 600000);
insert into tprovincia2 values ('CC', 'CACERES', 800000);
insert into tprovincia2 values ('B', 'BARCELONA', 200000);
insert into tprovincia2 values ('S', 'SEVILLA', 600000);
insert into tprovincia2 values ('TE', 'TERUEL', 800000);
insert into tprovincia2 values ('LO', 'LOGROÑO', 100000);
insert into tprovincia2 values ('TO', 'TOLEDO', 2000);
COMMIT;
