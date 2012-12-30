/*
Descri��o:
  Tabela utilizada para gravar os dados das profiss�es

Hist�rico de altera��es:
  v1.00  - 24/05/2012 
    - Cria��o da tabela
  v1.00a - 27/05/2012
    - Inclu�do a chave prim�ria id_profissao_profissoes_pk, o �ndice ds_profissao_profissoes_uq e a chave 
	estrangira cd_usuario_profissoes_fk. 
*/    
  
CREATE TABLE "profissoes" (
   "id_profissao"			INTEGER NOT NULL
   
  ,"ds_profissao"			VARCHAR ( 80) NOT NULL
  
  ,"dt_cadastro"			TIMESTAMP NOT NULL
  ,"dt_manutencao"		TIMESTAMP NOT NULL
  ,"dt_exclusao"			TIMESTAMP DEFAULT NULL
  
  ,"cd_usuario"			INTEGER NOT NULL

  ,CONSTRAINT "id_profissao_profissoes_pk" PRIMARY KEY ("id_profissao")
  ,CONSTRAINT "ds_profissao_profissoes_uq" UNIQUE      ("ds_profissao")
  
  ,CONSTRAINT "cd_usuario_profissoes_fk" FOREIGN KEY ("cd_usuario") REFERENCES "usuarios"("id_usuario")  
    ON DELETE NO ACTION ON UPDATE CASCADE
);

 

CREATE GENERATOR "id_profissao_profissoes_gn" ;
SET GENERATOR "id_profissao_profissoes_gn" TO 0;



