class Part < ApplicationRecord
  has_and_belongs_to_many :assemblies, join_table: 'assembly_parts', class_name: 'Assembly'

  belongs_to :supplier
  belongs_to :book

  validates :name, presence: true
end
