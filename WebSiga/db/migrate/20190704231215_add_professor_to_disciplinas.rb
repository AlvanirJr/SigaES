class AddProfessorToDisciplinas < ActiveRecord::Migration[5.1]
  def change
    add_reference :disciplinas, :professor, foreign_key: true
  end
end
