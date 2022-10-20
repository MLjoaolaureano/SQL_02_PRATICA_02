CREATE TABLE `biblioteca_db`.`Autor` (
  `idAutor` INT NOT NULL,
  `Nome` VARCHAR(45) NULL,
  `Nacionalidade` VARCHAR(45) NULL,
  PRIMARY KEY (`idAutor`));

CREATE TABLE `biblioteca_db`.`Aluno` (
  `idAluno` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `sobrenome` VARCHAR(45) NULL,
  `endereco` VARCHAR(45) NULL,
  `carreira` VARCHAR(45) NULL,
  `idade` INT NULL,
  PRIMARY KEY (`idAluno`));


CREATE TABLE `biblioteca_db`.`Livro` (
  `idLivro` INT NOT NULL,
  `Titulo` VARCHAR(70) NULL,
  `Editora` VARCHAR(45) NULL,
  `Area` VARCHAR(45) NULL,
  PRIMARY KEY (`idLivro`));


CREATE TABLE `biblioteca_db`.`Emprestimo` (
  `idLeitor` INT NULL,
  `idLivro` INT NULL,
  `data_emprestimo` DATETIME NULL,
  `retornou` VARCHAR(45) NULL,
  INDEX `idLeitor_idx` (`idLeitor` ASC) VISIBLE,
  INDEX `idLivro_idx` (`idLivro` ASC) VISIBLE,
  CONSTRAINT `idLeitor`
    FOREIGN KEY (`idLeitor`)
    REFERENCES `biblioteca_db`.`Aluno` (`idAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idLivro`
    FOREIGN KEY (`idLivro`)
    REFERENCES `biblioteca_db`.`Livro` (`idLivro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `biblioteca_db`.`Emprestimo` 
CHANGE COLUMN `retornou` `retornou` TINYINT(1) NULL DEFAULT NULL ;


CREATE TABLE `biblioteca_db`.`LivroAutor` (
  `idLivro` INT NOT NULL,
  `idAutor` INT NOT NULL,
  PRIMARY KEY (`idLivro`, `idAutor`),
  INDEX `idAutor_idx` (`idAutor` ASC) VISIBLE,
  CONSTRAINT `idLivroAutor`
    FOREIGN KEY (`idLivro`)
    REFERENCES `biblioteca_db`.`Livro` (`idLivro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idAutorLivro`
    FOREIGN KEY (`idAutor`)
    REFERENCES `biblioteca_db`.`Autor` (`idAutor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


INSERT INTO `biblioteca_db`.`Autor`
(`idAutor`,
`Nome`,
`Nacionalidade`)
VALUES
(1,
'Eduardo Bueno',
'Brasil'),
(2,
'Friedrich Nietzsche',
'Alemanha'),
(3,
'J.K. Rowling',
'Reino Unido'),
(4,
'Stephen King',
'Estados Unidos'),
(5,
'George Orwell',
'India'),
(6,
'Agatha Christie',
'Reino Unido'),
(7,
'Paulo Coelho',
'Brasil'),
(8,
'Miguel de Cervantes',
'Espanha'),
(9,
'Fernando Pessoa',
'Portugal'),
(10,
'J. R. R. Tolkien',
'África do Sul'),
(11,
'Jane Austen',
'Reino Unido');


INSERT INTO `biblioteca_db`.`Aluno`
(`idAluno`,
`nome`,
`sobrenome`,
`endereco`,
`carreira`,
`idade`)
VALUES
(1,
'Renata',
'Marli',
'Rua Luiz Antônio Basso',
'Vendedora',
24),
(2,
'Vitor',
'Caldeira',
'Rodovia BR-316',
'Radialista',
55),
(3,
'Thiago',
'Raimundo',
'Praça Poeta Clodoaldo de Alencar',
'Técnico TI',
31),
(4,
'Samuel',
'Martin',
'Rua Projetada',
'Professor',
24),
(5,
'Kauê',
'Moraes',
'Rua Professor Mário Porto',
'Enfermeiro',
33),
(6,
'Aline',
'Andrea',
'Rua Marabu',
'Atendente',
18),
(7,
'Larissa',
'Vera',
'Rua Castro Alves',
'Escritora',
51)



INSERT INTO `biblioteca_db`.`Livro`
(`idLivro`,
`Titulo`,
`Editora`,
`Area`)
VALUES
(
1,'A viagem do descobrimento','Estação Brasil','História'
),
(
2,'Brasil: uma história','Leya','História'
),

(
3,'Assim falou Zaratustra: Um livro para todos e para ninguém','Companhia de Bolso','Filosofia'
),
(
4,'A gaia ciência','Companhia de Bolso','Filosofia'
),

(
5,'Animais Fantásticos e onde habitam','Rocco','Fantasia'
),
(
6,'Harry Potter e a Ordem da Fênix','Fábrica231','Fantasia'
),
(
7,'Animais Fantásticos: Os Crimes de Grindelwald','Pottermore Publishing','Fantasia'
),
(
8,'Quadribol através dos séculos','Rocco','Fantasia'
),

(
9,'O iluminado','Suma','Terror'
),
(
10,'Doutor sono','Suma','Terror'
),
(
11,'Carrie','Suma','Terror'
),

(
12,'Na pior em Paris e Londres','Companhia das Letras','Ficção'
),
(
13,'A revolução dos bichos: Um conto de fadas','Companhia das Letras','Ficção'
),
(
14,'1984','Companhia das Letras','Ficção'
),

(
15,'É fácil matar','HarperCollins','Mistério'
),
(
16,'Assassinato no Expresso do Oriente','HarperCollins','Mistério'
),
(
17,'Convite para um homicídio','HarperCollins','Mistério'
),
(
18,'Os crimes ABC','HarperCollins','Mistério'
),

(
19,'O alquimista','Paralela','Ficção'
),
(
20,'O diário de um mago','Paralela','Ficção'
),

(
21,'Dom Quixote','Pé da Letra','Ficção'
),
(
22,'A Espanhola inglesa','Rocco Jovens Leitores','Ficção'
),

(
23,'O Cancioneiro','Simplíssimo','Poema'
),
(
24,'O Eu Profundo e Os Outros Eus','Textos para Reflexão','Poema'
),
(
25,'O Marinheiro','Editora da Unicamp','Poema'
),
(
26,'Poemas de Álvaro de Campos','L&PM','Poema'
),
(
27,'Livro do desassossego','Principis','Poema'
),
(
28,'Poesia completa de Alberto Caeiro','Companhia das Letras','Poema'
),
(
29,'Mensagem','Via Leitura','Poema'
),
(
30,'Poesia completa de Ricardo Reis','Companhia das Letras','Poema'
),

(
31,'A Queda de Númenor: e outros contos da Segunda Era da Terra-média','HarperCollins','Ficção'
),
(
32,'O Silmarillion','William Morrow & Company','Ficção'
),
(
33,'Os filhos de Húrin','HarperCollins','Ficção'
),
(
34,'A Natureza da Terra-Média','HarperCollins','Ficção'
),
(
35,'O Hobbit','HarperCollins','Ficção'
),

(
36,'Persuasão','Martin Claret','Romance'
),
(
37,'A Abadia de Northanger','Principis','Romance'
),
(
38,'Orgulho e Preconceito','Principis','Romance'
);


INSERT INTO `biblioteca_db`.`LivroAutor`
(`idAutor`,`idLivro`)
VALUES
(1,1),
(1,2),

(2,3),
(2,4),

(3,5),
(3,6),
(3,7),
(3,8),

(4,9),
(4,10),
(4,11),

(5,12),
(5,13),
(5,14),

(6,15),
(6,16),
(6,17),
(6,18),

(7,19),
(7,20),

(8,21),
(8,22),

(9,23),
(9,24),
(9,25),
(9,26),
(9,27),
(9,28),
(9,29),
(9,30),

(10,31),
(10,32),
(10,33),
(10,34),
(10,35),

(11,36),
(11,37),
(11,38);

INSERT INTO `biblioteca_db`.`Emprestimo`
(`idLeitor`,
`idLivro`,
`data_emprestimo`,
`retornou`)
VALUES
(1,3,'2021-05-14',0),
(4,21,'2022-01-30',0),
(5,14,'2021-07-12',1),
(5,18,'2021-09-10',0),
(2,9,'2022-03-10',0),
(3,21,'2019-05-11',1),
(4,5,'2022-01-04',0),
(5,10,'2021-09-17',0);
