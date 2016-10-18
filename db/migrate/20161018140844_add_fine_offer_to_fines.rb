class AddFineOfferToFines < ActiveRecord::Migration[5.0]
  def change
    add_column :fines, :fine_offer, :integer
  end
end
