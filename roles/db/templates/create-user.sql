drop user {{db_username}} cascade;
CREATE USER {{db_username}} IDENTIFIED BY {{db_password}} ;
GRANT CONNECT TO {{db_username}} ;
GRANT RESOURCE TO {{db_username}} ; 
exit;
