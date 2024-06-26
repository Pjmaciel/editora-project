class Supplier < ApplicationRecord
  validates :name, presence: true, length: { maximum: 150 }, format: { with: /\A[a-zA-Z\s]+\z/, message: "Apenas letras e espaços" }
  validates :cnpj, presence: true, length: { is: 14 }, format: { with: /\A\d{14}\z/, message: "only allows numbers format XXXXXXXXXXXXXX" }, uniqueness: true
end
