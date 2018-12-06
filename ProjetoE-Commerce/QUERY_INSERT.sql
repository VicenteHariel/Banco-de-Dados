INSERT INTO pessoa_tipo VALUES (1,'Cliente'),
			       (2,'Fornecedor'),
			       (3,'Administrador');

--chama função para inserir os clientes
select insere_clientes();

--chama função para inserir os fornecedores
select insere_fornecedores();

-- insere as pessoas do tipo administrador.
INSERT INTO pessoa VALUES (45,'Adm1','11111111111','12/11/2000',3),
			  (46,'Adm2','22222222222','14/01/1995',3),
			  (47,'Adm3','33333333333','25/03/1990',3);



INSERT INTO endereco VALUES (25,'rua 1',11,'balneário camboriu', 'brasil', '88330000'),
		            (24,'rua 2',12,'balneário camboriu', 'brasil', '88330000'),
    			    (23,'rua 3',13,'balneário camboriu', 'brasil', '88330000'),
			    (22,'rua 4',14,'balneário camboriu', 'brasil', '88330000'),
			    (21,'rua 5',15,'balneário camboriu', 'brasil', '88330000'),
			    (20,'rua 6',16,'balneário camboriu', 'brasil', '88330000'),
			    (19,'rua 7',17,'balneário camboriu', 'brasil', '88330000'),
			    (16,'rua 12',22,'Itajai', 'brasil', '88952326'),
			    (15,'rua 23',23,'Itajai', 'brasil', '88955326'),
			    (14,'rua 33',24,'Itajai', 'brasil', '88957326'),
			    (13,'rua 44',25,'Itajai', 'brasil', '88953326'),
			    (12,'rua 55',26,'Itajai', 'brasil', '88951326'),
			    (11,'rua 66',27,'Itajai', 'brasil', '88951326')
			    ;

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

INSERT INTO produto VALUES (1,'mouse',20.00,40),
			   (2,'teclado',25.00,40),
			   (3,'webcam',80.50,40),
			   (4,'monitor',200.00,40),
			   (5,'fone',44.35,40),
			   (6,'lapis',1.00,26),
			   (7,'caneta',2.00,26),
			   (8,'borracha',00.50,26),
			   (9,'cpu',100.00,30),
			   (10,'cooler',80.00,30),
			   (11,'hd',222.00,30),
			   (12,'celular',859.99,32),
			   (13,'tablet',820.10,32);
		   

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
				(2,'Sedex',true);


INSERT INTO frete VALUES (1,'00000001','00000005',20.00,1),
			 (2,'00000006','00000009',18.00,1),
			 (3,'00000010','99999999',11.50,1);	

		  		   
INSERT INTO  pedido VALUES (1,'05/11/2018',2,3,'06/11/2018'),
			  (2,'05/11/2018',6,2,'05/11/2018'),
			  (3,'03/10/2018',5,3,'09/10/2018'),
			  (4,'12/10/2018',2,3,'15/10/2018'),
			  (5,'28/09/2018',7,1,'01/10/2018'),
			  (6,'18/05/2018',1,1,'19/05/2018');


INSERT INTO item_pedido  VALUES (1,9),(1,19),(1,22),(1,39),(1,49),
			       	(2,2),(2,3),(2,12),
				(3,3),
			        (4,33),(4,43),(4,53),(4,32),(4,21),
			        (5,1),(5,60),(5,42),(5,44),(5,46),
			        (6,13),(6,14);
			       








 