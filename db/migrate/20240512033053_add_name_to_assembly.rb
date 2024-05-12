class AddNameToAssembly < ActiveRecord::Migration[7.1]
  def change
    add_column :assemblies, :name, :string
  end
end
