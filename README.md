# SQL 02
# PRÁTICA INTEGRADORA 02

Usar query SETUP.SQL para criacao do banco && testes

## Listar os dados dos autores.
    select * from Autor;
## Listar nome e idade dos alunos
    select nome, idade from aluno
## Quais alunos pertencem à carreira de informática?
    select nome, sobrenome from aluno
    where carreira = 'Informática';
## Quais autores são de nacionalidade francesa ou italiana?
    select nome, nacionalidade from Autor
    where nacionalidade = 'França' OR nacionalidade = 'Itália';
## Que livros não são da área da internet?
    select Titulo, Editora, Area from Livro
    where area <> 'Internet';
## Listar os livros da editora Salamandra.
    select Titulo, Editora, Area from Livro
    where editora = 'Salamandra';
## Listar os dados dos alunos cuja idade é maior que a média.
    select nome, idade from Aluno
    where idade > (select AVG(Aluno.idade) from Aluno);
## Listar os nomes dos alunos cujo sobrenome começa com a letra G.
    select nome from Aluno
    where sobrenome like 'G%';
## Listar os autores do livro "O Universo: Guia de Viagem". (Apenas nomes devem ser listados.)
    select nome from Autor
    join LivroAutor livro_autor on livro_autor.idAutor = Autor.idAutor
    join Livro livro on livro.idLivro = livro_autor.idLivro
    where livro.titulo = 'O Universo: Guia de Viagem';
## Listar autores que tenham nacionalidade italiana ou argentina.
    select nome, nacionalidade from Autor
    where nacionalidade = 'Argentina' OR nacionalidade = 'Itália';
## Que livros foram emprestados ao leitor “Filippo Galli”?
    Select nome from Livro
    join Emprestimo e on e.idLivro = Livro.idLivro
    join Aluno a on a.idAluno = e.idLeitor
    where a.nome = 'Filippo Galli';

## Listar o nome do aluno mais novo.
    select nome from Aluno
    order by idade ASC limit 1;
## Listar os nomes dos alunos a quem os livros de Banco de Dados foram emprestados.
    Select nome from Aluno
    join Emprestimo e on e.idLeitor = Aluno.idAluno
    join Livro l on l.idLivro = e.idLivro
    where l.area = 'Banco de Dados';
## Listar os livros que pertencem ao autor J.K. Rowling.
    select titulo from Livro
    join LivroAutor livro_autor on livro_autor.idLivro = Livro.idLivro
    join Autor autor on autor.idAutor = livro_autor.idAutor
    where autor.nome = 'J.K. Rowling';
## Listar os títulos dos livros que deveriam ser devolvidos até 16/07/2021.
    select titulo from Livro
    join Emprestimo e on e.idLivro = Livro.idLivro
    where data_emprestimo < '2021-07-16' AND
    retornou = 0;

