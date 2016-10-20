class CreateProductrails < ActiveRecord::Migration[5.0]
  def change
    create_table :productrails do |t|
      t.string :g
      t.text :scription

      t.timestamps
    end
  end
end
