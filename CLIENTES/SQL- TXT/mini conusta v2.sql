select AHO_TIPO_CTA, * from dba.ahorros where AHO_TIPO_CTA =4 
 order by AHO_TIPO_CTA  , aho_saldo desc, aho_codigo_coo desc

select Cooperativistas.COOP_IDENT_REP,aho_saldo, * from dba.cooperativistas 
join dba.ahorros on AHO_CODIGO_COO = coop_codigo
where coop_es_empresa =1 and Cooperativistas.COOP_ESTADO_ACTUAL =0 and aho_saldo >0 and Cooperativistas.COOP_IDENT_REP <>''