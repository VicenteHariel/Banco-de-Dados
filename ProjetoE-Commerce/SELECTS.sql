







--BUSCA TODOS OS PRODUTOS
SELECT * FROM PRODUTO;

-- BUSCA TODAS AS PESSOA
SELECT * FROM PESSOA;

--BUSCA PESSOA E SEU RESPECTIVO TIPO.
SELECT pessoa.nome, pessoa_tipo.nome_tipo FROM PESSOA 
INNER JOIN pessoa_tipo on pessoa.id_pessoa_tipo = pessoa_tipo.id_pessoa_tipo;

--  BUSCA NOME DAS PESSOAS FORNECEDORES E OS PRODRUTOS FORNECIDOS PELA MESMA.
SELECT p.nome, pro.descricao from pessoa p
LEFT JOIN produto pro on p.id_pessoa = pro.id_pessoa 
WHERE p.id_pessoa_tipo = 2;


-- CÓDIGO DO PEDIDO, USUÁRIO QUE FEZ O PEDIDO, DATA DO PEDIDO
SELECT p.id_pedido,u.login,p.data_pedido FROM pedido p
left join usuario u on p.id_usuario = u.id_usuario 
where u.id_usuario = 2
Order by data_pedido asc;

-- BUSCA OS PRODUTOS DO PEDIDO 4
select ped.id_pedido,p.descricao from pedido ped
left join item_pedido ip on ped.id_pedido =  ip.id_pedido
left join produto_estoque pe on ip.id_estoque = pe.id_estoque
left join produto p on pe.id_produto = p.id_produto
where ped.id_pedido = 4;


-- BUSCA O TIPO DE TRANSPORTE DO PEDIDO 3 E O VALOR DO FRETE
SELECT PEDIDO.ID_PEDIDO, TRANSPORTE.NOME_TRANSPORTE, FRETE.VALOR_FRETE FROM PEDIDO
LEFT JOIN FRETE ON PEDIDO.ID_FRETE = FRETE.ID_FRETE
LEFT JOIN TRANSPORTE ON FRETE.ID_TRANSPORTE = TRANSPORTE.ID_TRANSPORTE


-- BUSCA PRODUTOS COM VALOR MENOR QUE R$20.00
SELECT * FROM PRODUTO WHERE VALOR > 20;


--BUSCA NOME E CPF DA PESSOA
SELECT NOME, CPF_CNPJ FROM PESSOA;

-- BUSCA PRODUTOS COM VALOR MENOR QUE 10.00
SELECT * FROM PRODUTO WHERE VALOR_UNITARIO < 10;


--BUSCA PESSOAS COM DATA DE NASCIMENTO ENTRE 1990 A 2001
SELECT * FROM PESSOA WHERE DATA_NASC BETWEEN '01/01/1990' AND '20/02/2001';