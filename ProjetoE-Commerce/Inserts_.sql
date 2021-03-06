﻿INSERT INTO pessoa_tipo VALUES (1,'Cliente'),
			       (2,'Fornecedor'),
			       (3,'Administrador'),
			       (4,'Filial');
INSERT INTO pessoa VALUES
			(1,'Sophia','09/05/1995','00000655555',false,1),			 
			(2,'Davi','04/08/1990','56892655555',false,1),	
			(3,'Arthur','10/10/1992','99999655555',false,1),	
			(4,'Pedro','14/03/1992','88888655555',false,1),	
			(5,'Gabriel','20/02/2000','32165655555',false,1),
			(6,'Bernardo','30/01/1980','02121155555',false,1),
			(7,'Lucas','20/02/2000','32165655555',true,4),	
			(8,'Matheus','09/02/1982','98754655555',false,1),	
			(9,'Rafael','09/05/1995','95642356555',false,1),
			(10,'Heitor','20/10/1992','88854465650',false,1),
			(11,'Enzo','09/02/1982','65984655555',false,1),
			(12,'Guilherme','09/02/1982','00235655555',false,1),
			(13,'Beatriz','09/02/1982','91111115555',false,1),
			(14,'Helena','09/02/1982','694655885555',false,1),
			(15,'Maria Eduarda','09/02/1982','1812655555',false,1),
			(16,'Giovanna','09/02/1982','68854695555',false,1),
			(17,'Alice','09/02/1982','12754655555',false,1),
			(18,'Julia','09/02/1982','38754656585',false,4),
			(19,'Isabella','09/02/1982','9875233555',false,4),
			(20,'Manuela','30/01/1987','6653265984',true,2),
			(21,'Laura','25/02/1986', '33333322651',false,2),
			(22,'Luiza','15/11/1988','12345678910',false,2),
			(23,'Valentina','07/08/1990', '987654321',false,2),
			(24,'Adm1','12/11/2000','11111111111',FALSE,3),
			(25,'Adm2','14/01/1995','22222222222',FALSE,3),
			(26,'Adm3','25/03/1990','33333333333',FALSE,3);

			
INSERT INTO endereco VALUES 	(1,'88330000','brasil',11,'balneário camboriu','rua 1'),
				(2,'88330000','brasil',12,'balneário camboriu','rua 1654'),
				(3,'88330000','brasil',13,'balneário camboriu','rua 1544'),
				(4,'82230000','brasil',14,'Itjai','rua 1213'),	
				(5,'83243240','brasil',15,'Itjai','rua 1221'),
				(6,'88305945','brasil',16,'Brusque','rua 1111'),
				(7,'88332344','brasil',17,'Brusque','rua 9495'),
				(8,'88330000','brasil',18,'Brusque','rua 9456');
				

INSERT INTO usuario VALUES (1,'usr_1','123',true,1),
		   (2,'usr_2','123',true,2),
		   (3,'usr_3','123',true,3),
		   (4,'usr_4','123',true,4),
		   (5,'usr_5','123',true,5),
		   (6,'usr_6','123',true,6),
		   (7,'usr_7','123',true,7),
		   (8,'usr_8','123',true,8),
		   (9,'usr_9','123',true,9),
		   (10,'usr_10','123',true,10),
		   (11,'usr_11','123',true,11),
		   (12,'usr_12','123',true,12),
		   (13,'usr_13','123',true,13),
		   (14,'usr_14','123',true,14),
		   (15,'usr_15','123',true,15);

INSERT INTO produto VALUES (1,'mouse',20.00,20,1),
			   (2,'teclado',25.00,20,1),
			   (3,'webcam',80.50,20,1),
			   (4,'monitor',200.00,20,1),
			   (5,'fone',44.35,20,3),
			   (6,'lapis',1.00,21,3),
			   (7,'caneta',2.00,21,3),
			   (8,'borracha',00.50,21,1),
			   (9,'cpu',100.00,21,1),
			   (10,'cooler',80.00,22,1),
			   (11,'hd',222.00,22,4),
			   (12,'celular',859.99,22,4),
			   (13,'tablet',820.10,22);
		   

INSERT INTO produto_estoque VALUES (1,1),(14,1),
		   (2,2), (15,2), (27,2), (39,2), (51,2), (63,2),
		   (3,3), (16,3), (28,3), (40,3), (52,3), (64,3),
		   (4,4), (17,4), (29,4), (41,4), (53,4), (65,4),
		   (5,5), (18,5), (30,5), (42,5), (54,5), (66,5),(75,5),
		   (6,6), (19,6), (31,6), (43,6), (55,6), (67,6),
		   (7,7), (20,7), (32,7), (44,7), (56,7), (68,7),
		   (8,8), (21,8), (33,8), (45,8), (57,8), (69,8),(76,8),
		   (9,9), (22,9), (34,9), (46,9), (58,9), (70,9),
		   (10,10),(23,10), (35,10), (47,10), (59,10), (71,10),(77,10),
		   (11,11),(24,11), (36,11), (48,11), (60,11), (72,11),
		   (12,12),(25,12), (37,12), (49,12), (61,12), (73,12),(78,12),
		   (13,13),(26,13), (38,13), (50,13), (62,13), (74,13);		   

select count (id_estoque)from produto_estoque where id_produto = 9;


INSERT INTO transporte VALUES   (1,'Correios',true),
				(2,'Sedex',true),
				(3,'Aéreo',true),
				(4,'Marítmo',true);

INSERT INTO frete VALUES (1,'00000001','00000005',20.00,1),
			 (2,'00000006','00000009',18.00,1),
			 (3,'00000010','99999999',11.50,1);	

		  		   
INSERT INTO  pedido VALUES (1,'05/11/2018','06/11/2018',2,3),
			  (2,'05/11/2018','05/11/2018',6,2),
			  (3,'03/10/2018','09/10/2018',5,3),
			  (4,'12/10/2018','15/10/2018',2,3),
			  (5,'28/09/2018','15/10/2018',7,1),
			  (6,'18/05/2018','19/05/2018',1,1),
			  (7,'28/09/2018','15/10/2018',7,1),
			  (8,'18/05/2018','19/05/2018',15,1),
			  (9,'28/09/2018','15/10/2018',12,1),
			  (10,'12/05/2018','10/05/2018',9,1);


INSERT INTO item_pedido (id_pedido,id_estoque) VALUES (1,9),(1,19),(1,22),(1,39),(1,49),
			       	(2,2),(2,3),(2,12),
				(3,3),
			        (4,33),(4,43),(4,53),(4,32),(4,21),
			        (5,1),(5,60),(5,42),(5,44),(5,46),
			        (6,13),(6,14);
			       

INSERT INTO CATEGORIA VALUES (1,'eletrônico'),
			     (2,'Eletrodomestico'),
			     (3,'Material Ecolar'),
			     (4,'Lazer'),
			     (5,'Brinquedo'),
			     (6,'Automação'),
			     (7,'Beleza/Estética');
			     
INSERT INTO IMAGENS VALUES (1,'FOTO1',1),
			   (2,'FOTO2',1),
			   (3,'FOTO1',2),
			   (4,'FOTO2',2),
			   (5,'FOTO1',3),
			   (6,'FOTO2',3),
			   (7,'FOTO3',3),
			   (8,'FOTO1',4),
			   (9,'FOTO1',5),
			   (10,'FOTO1',6),
			   (11,'FOTO1',7),
			   (12,'FOTO1',8),
			   (13,'FOTO1',9),
			   (14,'FOTO1',10),
			   (15,'FOTO1',11);




 