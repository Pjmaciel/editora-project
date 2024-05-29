# frozen_string_literal: true

class Assembly_parts
  self.table_name = 'assembly_parts'
  belongs_to :assembly
  belongs_to :part
end
