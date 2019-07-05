require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'Nao deve salvar user sem nome ' do
    user = User.new
    assert_not user.save
  end


  test 'Deve salvar user com nome  ' do
    user = User.new nome:"Alvanir"
    assert user.save
  end


  test 'Deve salvar user com nome  ' do
    user = User.new nome:"Alvanir"
    assert user.save
  end

  test 'Usuario nao existe' do
    user = User.all
    assert_not user.any?
  end

end
