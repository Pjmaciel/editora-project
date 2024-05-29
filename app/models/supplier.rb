class Supplier < ApplicationRecord
  has_many :accounts
  validates :name, presence: true, length: { maximum: 150 }, format: { with: /\A[a-zA-Z\s]+\z/, message: "Apenas letras e espaços" }
  validates :cnpj, presence: true, length: { is: 14 }, format: { with: /\A\d{14}\z/, message: "only allows numbers format XXXXXXXXXXXXXX" }, uniqueness: true

  def self.ransackable_attributes(auth_object = nil)
    %w[cnpj name]
  end
end