/*
Descri��o:
  Tabela utilizada para gravar os dados dos logradouros.
  Entendesse por logradouros os seguintes endere�os postais:
     aeroporto, alameda, �rea, avenida, campo, ch�cara, col�nia, condom�nio, conjunto, distrito, 
	 esplanada, esta��o, estrada, favela, feira, jardim, ladeira, lago, lagoa, largo, loteamento, 
	 morro, n�cleo, parque, passarela, p�tio, pra�a, quadra, recanto, residencial, rodovia, rua, 
	 setor, s�tio, travessa, trecho, trevo, vale, vereda, via, viaduto, viela, vila.

Hist�rico de altera��es:
  v1.00  - 24/05/2012 
    - Cria��o da tabela
  v1.00a - 27/05/2012
    - Inclu�do a chave primaria id_logradouro_logradouros_pk,k o indice ds_logradouro_logradouros_uq e a 
    chave estrangeira cd_usuario_logradouros_pk 	
*/ 
  
 CREATE TABLE "logradouros" (
   "id_logradouro" 	INTEGER NOT NULL  
  
  ,"ds_logradouro" 	VARCHAR ( 40) NOT NULL 
  
  ,"dt_cadastro"   	TIMESTAMP NOT NULL
  ,"dt_manutencao" 	TIMESTAMP NOT NULL
  ,"dt_exclusao"   	TIMESTAMP DEFAULT NULL
  
  ,"cd_usuario"		INTEGER NOT NULL      
	
  ,CONSTRAINT "id_logradouro_logradouros_pk" PRIMARY KEY ("id_logradouro") 
  ,CONSTRAINT "ds_logradouro_logradouros_uq" UNIQUE ("ds_logradouro")  
	
  ,CONSTRAINT "cd_usuario_logradouros_pk" FOREIGN KEY ("cd_usuario") REFERENCES "usuarios"("id_usuario")
    ON DELETE NO ACTION ON UPDATE CASCADE  
);



CREATE GENERATOR "id_logradouro_logradouros_gn" ;
SET GENERATOR "id_logradouro_logradouros_gn" TO 0;


