class CreateSuppliers < ActiveRecord::Migration[7.1]
  def change
    create_table :suppliers do |t|
      t.string :CNPJ
      t.text :name

      t.timestamps
    end
  end
end
