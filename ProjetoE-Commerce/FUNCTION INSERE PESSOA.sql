
/* ******************************  */
-- Funções Para Inserir as Pessoas sequencialmente
CREATE OR REPLACE FUNCTION insere_clientes()
RETURNS BOOLEAN AS $$

 DECLARE
      numero_maximo INTEGER = 21;
      contador INTEGER = 1;
    BEGIN
      WHILE contador != numero_maximo LOOP
	INSERT INTO pessoa VALUES (contador, 'cliente_'||((contador)::varchar),(select round(random()* 99999999999)),
	Cast((SELECT round(random() * 30 + 1)::varchar)||'/'||(SELECT round(random() * 11 + 1)::varchar)||'/19'||((contador+78)::varchar) as date),1);
        contador := contador + 1;
      END LOOP;    
      RETURN TRUE;
    END;
  $$ LANGUAGE 'plpgsql';



CREATE OR REPLACE FUNCTION insere_fornecedores()
RETURNS BOOLEAN AS $$

 DECLARE
      numero_maximo INTEGER = 45;
      cont INTEGER = 1;
      contador INTEGER = 21;
    BEGIN
      WHILE contador != numero_maximo LOOP
	INSERT INTO pessoa VALUES (contador, 'fornecedor_'||((cont)::varchar),(select round(random()* 99999999999)),
	(SELECT round(random() * 30 + 1)||'/'||(SELECT round(random() * 11 + 1))||'/19'||((contador+50)::varchar))::date,2);
        contador := contador + 1;
        cont:= cont +1;
      END LOOP;    
      RETURN TRUE;
    END;
  $$ LANGUAGE 'plpgsql';

