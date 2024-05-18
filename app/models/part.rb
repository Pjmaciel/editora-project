class Part < ApplicationRecord
  has_and_belongs_to_many :assemblies, join_table: 'assembly_parts'
  belongs_to :supplier

  validates :name, presence: true
end
