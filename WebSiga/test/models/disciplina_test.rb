require 'test_helper'

class DisciplinaTest < ActiveSupport::TestCase
  test 'Nao deve salvar disciplina sem nome ' do
    disciplina = Disciplina.new
    assert_not disciplina.save
  end


  test 'Deve salvar disciplina com nome  ' do
    disciplina = Disciplina.new nome:"Alvanir"
    assert disciplina.save
  end


  test 'Deve salvar disciplina com nome  ' do
    disciplina = Disciplina.new nome:"Alvanir"
    assert disciplina.save
  end

  test 'Aluno nao existe' do
    disciplina = Disciplina.all
    assert_not disciplina.any?
  end
end
