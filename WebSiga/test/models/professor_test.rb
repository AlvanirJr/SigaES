require 'test_helper'

class ProfessorTest < ActiveSupport::TestCase
  test 'Nao deve salvar professor sem nome ' do
    professor = Professor.new
    assert_not professor.save
  end


  test 'Deve salvar professor com nome  ' do
    professor = Professor.new nome:"Alvanir"
    assert professor.save
  end


  test 'Deve salvar professor com nome  ' do
    professor = Professor.new nome:"Alvanir"
    assert professor.save
  end

  test 'Professor nao existe' do
    professor = Professor.all
    assert_not professor.any?
  end
end
