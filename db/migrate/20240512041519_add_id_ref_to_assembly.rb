class AddIdRefToAssembly < ActiveRecord::Migration[7.1]
  def change
    add_reference :assemblies, :book, null: false, foreign_key: true
  end
end
