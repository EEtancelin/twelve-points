class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.float :price
      t.string :status
      t.text :comment
      t.references :fine, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
