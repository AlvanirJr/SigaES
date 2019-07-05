class AddAlunoToDisciplinas < ActiveRecord::Migration[5.1]
  def change
    add_reference :disciplinas, :aluno, foreign_key: true
  end
end
