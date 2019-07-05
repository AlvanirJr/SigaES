Feature: Criar um aluno, atraves do perfil Admistrador


  Scenario: Criar uma perfil aluno
    Given Estou na pagina de novo aluno
    When Crio uma conta com nome 'Pedro', email 'pedro@gmail.com', cpf '12345678900'
    Then Vejo uma mensagem de sucesso


  Scenario: Criar uma conta de aluno sem nome
    Given Estou na pagina de novo aluno
    When Crio uma conta com nome '', email 'alvanir@gmail.com', cpf '12345678900'
    Then Vejo uma mensagem de sucesso

  Scenario: Criar uma conta de aluno sem email
    Given Estou na pagina de novo aluno
    When Crio uma conta com nome 'Alvanir', email '', cpf '12345678900'
    Then Vejo uma mensagem de sucesso


  Scenario: Criar uma conta de aluno sem senha
    Given Estou na pagina de novo aluno
    When Crio uma conta com nome 'Alvanir', email 'alvanir@gmail.com', cpf ''
    Then Vejo uma mensagem de sucesso