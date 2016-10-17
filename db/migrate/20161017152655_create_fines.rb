class CreateFines < ActiveRecord::Migration[5.0]
  def change
    create_table :fines do |t|
      t.datetime :fine_date
      t.datetime :fine_deadline
      t.integer :point
      t.float :price
      t.text :reason
      t.text :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
