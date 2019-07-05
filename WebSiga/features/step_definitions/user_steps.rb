Given("Estou na pagina de novo user") do
  visit '/users/new'
  expect(page).to have_current_path('/users/new')
end

When("Crio uma conta com nome {string}, email {string}, senha {string}") do |nome, email, senha|

  fill_in 'user[nome]', :with => nome
  fill_in 'user[email]', :with => email
  fill_in 'user[password]', :with => senha
  fill_in 'user[password_confirmation]', :with => senha
  click_button 'Cadastrar'

  visit '/entrar'
  fill_in 'session[email]', :with => email
  fill_in 'session[password]', :with => senha
  click_button 'Entrar'

end

Then("Vejo uma mensagem de sucesso na criacao") do
  page.has_content?('successfully')
end




Given("Estou na pagina de novo aluno") do
  visit '/alunos/new'
  expect(page).to have_current_path('/alunos/new')

end

When("Crio uma conta com nome {string}, email {string}, cpf {string}") do |nome, email, cpf|
  fill_in 'aluno[nome]', :with => nome
  fill_in 'aluno[email]', :with => email
  fill_in 'aluno[cpf]', :with => cpf
  click_button 'Cadastrar'

end

Then("Vejo uma mensagem de sucesso") do
  page.has_content?('successfully')
end



Given("Estou na pagina de novo disciplina") do
  visit '/disciplinas/new'
  expect(page).to have_current_path('/disciplinas/new')

end

When("Crio uma disciplina com nome {string}, cargaHoraria {int}, professor_id {int}") do |nome, hora, id|
  fill_in 'disciplina[nome]', :with => nome
  fill_in 'disciplina[cargaHoraria]', :with => hora
  fill_in 'disciplina[professor_id]', :with => id
  click_button 'Cadastrar'
end

Then("Vejo uma mensagem de disciplina criada com sucesso") do
  page.has_content?('successfully')
end

When("Crio uma disciplina com nome {string}, cargaHoraria , professor_id {int}") do |nome, id|
  fill_in 'disciplina[nome]', :with => nome
  fill_in 'disciplina[professor_id]', :with => id
  click_button 'Cadastrar'
end

When("Crio uma disciplina com nome {string}, cargaHoraria {int}, professor_id") do |nome, hora|
  fill_in 'disciplina[nome]', :with => nome
  fill_in 'disciplina[cargaHoraria]', :with => hora
  click_button 'Cadastrar'
end

Given("Estou na pagina de novo professor") do
  visit '/professors/new'
  expect(page).to have_current_path('/professors/new')

end

When("Crio uma conta professor com nome {string}, email {string}, cpf {string}") do |nome, email, cpf|
  fill_in 'professor[nome]', :with => nome
  fill_in 'professor[email]', :with => email
  fill_in 'professor[cpf]', :with => cpf
  click_button 'Cadastrar'
end

