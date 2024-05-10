class Author < ApplicationRecord
  validates :name, presence: true, length: { maximum: 150 }, format: { with: /\A[a-zA-Z\s]+\z/, message: "Apenas letras e espaços" }, uniqueness: true
  validates :CPF, presence: true, length: { is: 11 }, format: { with: /\A\d{11}\z/, message: "deve conter 11 numeros sem espaço"}, uniqueness: true
end
