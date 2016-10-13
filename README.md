# Kursai
==============

O **Kursai** é um projeto *(opensource)* cujo a idéia é compartilhar conhecimentos através de cursos disponibilizados pelos próprios usuários totalmente de graça. O único intuíto é de tornar o mundo melhor!

O Kursai está disponilibizado no heroku [AQUI](https://boiling-castle-66536.herokuapp.com/)

## Tecnologias utilizadas

O **Kursai** foi desenvolvido com as seguintes gems:

1. rails 5
2. bootstrap-sass
3. enumerate_it
4. responders
5. slim-rails
6. rspec-rails
7. factory_girl_rails
8. capybara
9. guard-rspec
10. shoulda-matchers
11. database_cleaner
12. faker
13. pg

## Configurando o seu ambiente

1. Faça o clone deste projeto com `git clone https://github.com/igormelao/kursai.git`
2. Entre na pasta do projeto e instale as dependências com `bundle install`
3. Rode o comando `rails db:migrate` para criar o banco e suas tabelas
4. Execute os testes com com o comando `rspec`
5. Rode a aplicação com `rails s`

## Testando a aplicação

1. Abra o browser e visite a página `http://localhost:3000`

## Próximas melhorias

1. Criar uma funcionalidade para o aluno se disvincular de um Curso
2. Somente matricular alunos cujo seu status está ativo
3. Melhorar testes de integração ( Somente foi implementado o básico do básico muito além do recomendado )
4. Melhorar a página inicial, informando os cursos mais recentes que foram criados
5. Criar um sistema de login com usuários estudantes de um administrador
6. Disponibilizar o README em uma versão inglês.

