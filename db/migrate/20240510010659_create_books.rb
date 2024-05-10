class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.text :title
      t.string :ISBN
      t.boolean :published
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
