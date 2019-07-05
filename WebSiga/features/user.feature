Feature: Gerenciar um user


  Scenario: Criar uma conta de user
    Given Estou na pagina de novo user
    When Crio uma conta com nome 'Pedro', email 'pedro@gmail.com', senha '123456'
    Then Vejo uma mensagem de sucesso na criacao


  Scenario: Criar uma conta de user sem nome
    Given Estou na pagina de novo user
    When Crio uma conta com nome '', email 'alvanir@gmail.com', senha '123456'
    Then Vejo uma mensagem de sucesso na criacao

  Scenario: Criar uma conta de user sem email
    Given Estou na pagina de novo user
    When Crio uma conta com nome 'Alvanir', email '', senha '123456'
    Then Vejo uma mensagem de sucesso na criacao


  Scenario: Criar uma conta de user sem senha
    Given Estou na pagina de novo user
    When Crio uma conta com nome 'Alvanir', email 'alvanir@gmail.com', senha ''
    Then Vejo uma mensagem de sucesso na criacao