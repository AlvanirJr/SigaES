Feature: Criar um Professor atraves de um perfil Admistrador


  Scenario: Criar uma perfil professor
    Given Estou na pagina de novo professor
    When Crio uma conta professor com nome 'Pedro', email 'pedro@gmail.com', cpf '12345678900'
    Then Vejo uma mensagem de sucesso


  Scenario: Criar uma conta de professor sem nome
    Given Estou na pagina de novo professor
    When Crio uma conta professor com nome '', email 'alvanir@gmail.com', cpf '12345678900'
    Then Vejo uma mensagem de sucesso

  Scenario: Criar uma conta de professor sem email
    Given Estou na pagina de novo professor
    When Crio uma conta professor com nome 'Alvanir', email '', cpf '12345678900'
    Then Vejo uma mensagem de sucesso


  Scenario: Criar uma conta de aluno sem professor
    Given Estou na pagina de novo professor
    When Crio uma conta professor com nome 'Alvanir', email 'alvanir@gmail.com', cpf ''
    Then Vejo uma mensagem de sucesso