class AddLastNandFirstNToFines < ActiveRecord::Migration[5.0]
  def change
    add_column :fines, :last_name, :string
    add_column :fines, :first_name, :string
  end
end
