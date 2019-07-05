require 'test_helper'

class AlunoTest < ActiveSupport::TestCase
  test 'Nao deve salvar aluno sem nome ' do
    aluno = Aluno.new
    assert_not aluno.save
  end


  test 'Deve salvar aluno com nome  ' do
    aluno = Aluno.new nome:"Alvanir"
    assert aluno.save
  end


  test 'Deve salvar aluno com nome  ' do
    aluno = Aluno.new nome:"Alvanir"
    assert aluno.save
  end

  test 'Aluno nao existe' do
    aluno = Aluno.all
    assert_not aluno.any?
  end
end
