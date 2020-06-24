# Processo Seletivo AutoSeg

## Objetivo

Desenvolver uma aplicação Rails com as características abaixo no GitHub.

A aplicação a ser desenvolvida é um organizador de listas de tarefas (to-do lists).

A ideia do mini-app é ter um produto funcional, possível de ser usado no dia-a-dia.

## Nível 1
 -  Usuário pode fazer Sign-up e Sign-in (autenticação) [é obrigatório o uso do Devise]
 -  Após logado, o usuário pode criar uma Lista de Tarefas
 -  No momento da criação de uma Lista já podemos criar várias Tarefas (usando nested attributes com javascript ou outro mecanismo de sua escolha).
 -  Cada lista pode ser "Pública" ou "Privada"
 -  O usuário criador da lista pode fechar uma tarefa
 -  O usuário logado pode ver listas públicas de outros usuários
 -  O usuário logado pode marcar uma lista pública de outro usuário como favorita
 -  O usuário logado pode ver todas as listas que ele marcou como favoritas
 
 ## Iniciando aplicação
 
 Para isso abra o terminal,faça clone do projeto e entre na pasta do projeto
 
 git clone https://github.com/GuiRocha/mini-app-todo.git
 
 cd mini-app-todo
 
 Rode o comando `bundle install` e/ou `bundle update` se necessário
 
 Rode o seguinte comando para rodar o banco de dados
 
 `rails db:drop db:create db:migrate`
 
 Rode o seguinte comando para iniciar a aplicação
 
 `rails s`
 
  Após isso acesse o endereço http://localhost:3000 no browser.
  
  
  Para rodar os testes rode o seguinte comando
  
  `bundle exec rspec`