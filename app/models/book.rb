class Book < ApplicationRecord
  belongs_to :author

  has_many :assemblies

  validates :title, presence: true
  validates :ISBN, presence: true, length: { is: 13 }, format: { with: /\A[a-zA-Z\d]+\z/, message: "deve conter 11 numeros sem espaço"}, uniqueness: true
end
