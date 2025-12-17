create table	tcliente2(
	dni		char(10)	not null,
	nombre		varchar2(25)	not null,
	provincia	char(2)		not null,
	tipo		char(2),
	fecha_alta	date,
	vendedor	char(3),
	compras		number(9,2),
	CONSTRAINT CP_TCLIENTE2 PRIMARY KEY (DNI),
	CONSTRAINT CA_TCLIENTE2_TPROVINCIA2 FOREIGN KEY (PROVINCIA) REFERENCES TPROVINCIA2 (CODIGO),
	CONSTRAINT CA_TCLIENTE2_TVENDEDOR2 FOREIGN KEY (VENDEDOR) REFERENCES TVENDEDOR2 (COD_VEN))
/

Insert into tcliente2 values ('10101010','VALLE MAS ANGEL','HU','AA',TO_DATE('12/04/1996','DD/MM/YYYY'),'001',0100000);
Insert into tcliente2 values ('20202020','CARRERA PEREZ LUIS','Z','BB',TO_DATE('09/02/1997','DD/MM/YYYY'),'002',0200000);
Insert into tcliente2 values ('30303030','LÓPEZ MUR ANA','HU','AA',TO_DATE('09/06/1998','DD/MM/YYYY'),'003',0300000);
Insert into tcliente2 values ('40404040','GOMEZ GOMEZ MARIA','M','CC',TO_DATE('08/04/1992','DD/MM/YYYY'),'001',0200000);
Insert into tcliente2 values ('50505050','TORRES CINCO BENITO','TO','AA',TO_DATE('09/08/1998','DD/MM/YYYY'),'003',0200000);
Insert into tcliente2 values ('60606060','ROLDAN GUARDIA JOSE','CC','DD',TO_DATE('01/01/1998','DD/MM/YYYY'),'001',0100000);
Insert into tcliente2 values ('70707070','PINO ALTO LUISA','Z','AA',TO_DATE('12/04/1996','DD/MM/YYYY'),'001',0400000);
COMMIT;
