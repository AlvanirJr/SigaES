Feature: Criar uma nova disciplina, Atraves do perfil Adminstrador


  Scenario: Criar uma  nova disciplina
    Given Estou na pagina de novo disciplina
    When Crio uma disciplina com nome 'paa', cargaHoraria 1, professor_id 1
    Then Vejo uma mensagem de disciplina criada com sucesso


  Scenario: Criar uma disciplina sem nome
    Given Estou na pagina de novo disciplina
    When Crio uma disciplina com nome ' ', cargaHoraria 1, professor_id 1
    Then Vejo uma mensagem de disciplina criada com sucesso

  Scenario: Criar uma disciplina sem cargaHoraria
    Given Estou na pagina de novo disciplina
    When Crio uma disciplina com nome 'paa', cargaHoraria , professor_id 1
    Then Vejo uma mensagem de disciplina criada com sucesso


  Scenario: Criar uma disciplina sem professor id
    Given Estou na pagina de novo disciplina
    When Crio uma disciplina com nome 'paa', cargaHoraria 1, professor_id
    Then Vejo uma mensagem de disciplina criada com sucesso