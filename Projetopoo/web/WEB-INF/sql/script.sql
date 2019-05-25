DROP TABLE usuarios;

CREATE TABLE usuarios(
usuario_id BIGINT NOT NULL PRIMARY KEY
GENERATED ALWAYS AS IDENTITY
(START WITH 1, INCREMENT BY 1),

usuario_nome VARCHAR(30) NOT NULL,
usuario_role VARCHAR(20) NOT NULL,
usuario_login VARCHAR(200) NOT NULL,
usuario_passwordHash BIGINT NOT NULL
);

INSERT INTO usuarios VALUES
(default,'Carlos','Administrador','admin', 1509442);

INSERT INTO usuarios VALUES
(default,'Maria','Cliente','maria',1509442);

DROP TABLE filmes;

CREATE TABLE filmes(
filme_id BIGINT NOT NULL PRIMARY KEY
GENERATED ALWAYS AS IDENTITY
(START WITH 1, INCREMENT BY 1),

filme_nome VARCHAR(50) NOT NULL,
filme_genero VARCHAR(20) NOT NULL,
filme_preco DOUBLE NOT NULL
);

INSERT INTO filmes VALUES
(default,'teste','comedia',20.00);

DROP TABLE locacoes;

CREATE TABLE locacoes(
locacao_id BIGINT NOT NULL PRIMARY KEY
GENERATED ALWAYS AS IDENTITY
(START WITH 1, INCREMENT BY 1),

locacao_aluguel TIMESTAMP NOT NULL,
locacao_devolucao TIMESTAMP NOT NULL
);



    