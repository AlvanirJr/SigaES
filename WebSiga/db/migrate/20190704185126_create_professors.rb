class CreateProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :professors do |t|
      t.string :nome
      t.string :email
      t.string :cpf

      t.timestamps
    end
  end
end
