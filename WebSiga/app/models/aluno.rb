class Aluno < ApplicationRecord

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates_uniqueness_of :cpf, presence: true, length: { minimum: 11, maximum: 11 }
  validates :nome, presence: true, length: { maximum: 50}
  validates :email, presence: true, length: { maximum: 255},
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: {case_sensitive: true}
  has_many :disciplinas

end
