class CreateSuppliers < ActiveRecord::Migration[7.1]
  def change
    create_table :suppliers do |t|
      t.string :cnpj
      t.string :name

      t.timestamps
    end
  end
end
