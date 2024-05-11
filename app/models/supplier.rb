class Supplier < ApplicationRecord
  validates :name, presence: true, length: { maximum: 150 }, format: { with: /\A[a-zA-Z\s]+\z/, message: "Apenas letras e espaços" }
  validates :CNPJ, presence: true, format: { with: /\A\d+\z/, message: "Somente numeros" }
end
