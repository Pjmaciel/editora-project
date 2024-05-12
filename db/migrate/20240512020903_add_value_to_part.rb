class AddValueToPart < ActiveRecord::Migration[7.1]
  def change
    add_column :parts, :value, :integer
  end
end
