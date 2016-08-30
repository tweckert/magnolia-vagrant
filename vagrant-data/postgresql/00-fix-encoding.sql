UPDATE pg_database SET datistemplate = FALSE WHERE datname = 'template1';
DROP DATABASE template1;
CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UNICODE' LC_CTYPE='de_DE.utf8' LC_COLLATE='de_DE.utf8';
UPDATE pg_database SET datistemplate = TRUE WHERE datname = 'template1';