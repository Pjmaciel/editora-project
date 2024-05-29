class Assembly < ApplicationRecord
  has_and_belongs_to_many :parts, join_table: 'assembly_parts', class_name: 'Part'
  belongs_to :book

  validates :name, presence: true
end
