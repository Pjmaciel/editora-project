class AddNameToPart < ActiveRecord::Migration[7.1]
  def change
    add_column :parts, :name, :string
  end
end
