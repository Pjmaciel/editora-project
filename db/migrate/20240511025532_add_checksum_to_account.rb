class AddChecksumToAccount < ActiveRecord::Migration[7.1]
  def change
    add_column :accounts, :checksum, :integer
  end
end
