class Assembly < ApplicationRecord
  has_and_belongs_to_many :parts, join_table: 'assembly_parts'
  belongs_to :book

  validates :name, presence:true

end
