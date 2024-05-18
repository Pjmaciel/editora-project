class CreateAssemblyParts < ActiveRecord::Migration[7.1]
  def change
    create_table :assembly_parts, id: false do |t|
      t.references :assembly, null: false, foreign_key: true
      t.references :part, null: false, foreign_key: true

      t.timestamps
    end

    add_index :assembly_parts, :assembly_id unless index_exists?(:assembly_parts, :assembly_id)
    add_index :assembly_parts, :part_id unless index_exists?(:assembly_parts, :part_id)
  end
end
