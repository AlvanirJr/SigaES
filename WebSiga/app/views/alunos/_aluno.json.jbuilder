json.extract! aluno, :id, :nome, :email, :cpf, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
