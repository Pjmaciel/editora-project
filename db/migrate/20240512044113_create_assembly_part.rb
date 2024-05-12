class CreateAssemblyPart < ActiveRecord::Migration[7.1]
  def change
    create_table :assembly_parts, id: false do |t|
      t.references :assembly, null: false, foreign_key: true
      t.references :part, null: false, foreign_key: true

      t.timestamps
    end
  end
end
