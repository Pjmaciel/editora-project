class Book < ApplicationRecord
  belongs_to :author

  has_many :assemblies

  validates :title, presence: true
end
