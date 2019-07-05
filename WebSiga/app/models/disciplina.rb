class Disciplina < ApplicationRecord

  validates :nome, presence: true, length: { minimum: 3, maximum: 20 }
  validates :cargaHoraria, presence: true, numericality: { greater_than: -1 }

  has_many :alunos
  belongs_to :professors
end
