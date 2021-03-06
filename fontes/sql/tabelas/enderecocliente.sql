/*
Descri��o:
  Tabela utilizada para gravar os dados do endere�o do cliente informado no cadastro do cliente
  *Tabela normalizada com base na tablea clientes

Hist�rico de altera��es:
  v1.00 - 24/05/2012 
    - Cria��o da tabela
*/     
 
CREATE TABLE "enderecocliente" (
   "id_enderecocliente" 	INTEGER NOT NULL
  
  ,"cd_logradouro" 			INTEGER
  ,"tx_numero_logradouro" 	VARCHAR ( 10)
  
  ,"cd_bairro"      		INTEGER
  ,"tx_complemento_logradouro" 	VARCHAR ( 80)
  ,"cd_municipio"      		INTEGER
  ,"nu_cep"         		INTEGER
  ,"cd_uf"              INTEGER
  
  ,"cd_usuario"    			INTEGER NOT NULL    
  
  ,CONSTRAINT "id_enderecocliente_endcli_pk" PRIMARY KEY ("id_enderecocliente")  
  
  ,CONSTRAINT "cd_logradouro_endcli_fk" FOREIGN KEY ("cd_logradouro") REFERENCES "logradouros"("id_logradouro")
    ON DELETE NO ACTION ON UPDATE CASCADE 
	
  ,CONSTRAINT "cd_bairro_endcli_fk" FOREIGN KEY ("cd_bairro") REFERENCES "bairros"("id_bairro")
    ON DELETE NO ACTION ON UPDATE CASCADE

  ,CONSTRAINT "cd_municipio_endcli_fk" FOREIGN KEY ("cd_municipio") REFERENCES "municipios"("id_municipio")
    ON DELETE NO ACTION ON UPDATE CASCADE

  ,CONSTRAINT "cd_uf_endcli_fk" FOREIGN KEY ("cd_uf") REFERENCES "ufs"("id_uf")
    ON DELETE NO ACTION ON UPDATE CASCADE

  ,CONSTRAINT "cd_usuario_endcli_fk" FOREIGN KEY ("cd_usuario") REFERENCES "usuarios"("id_usuario")
    ON DELETE NO ACTION ON UPDATE CASCADE	
  
);

CREATE GENERATOR "id_enderecocliente_endcli_gn";
SET GENERATOR "id_enderecocliente_endcli_gn" TO 0;

