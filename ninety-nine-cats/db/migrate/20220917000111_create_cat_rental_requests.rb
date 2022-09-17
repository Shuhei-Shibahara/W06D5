class CreateCatRentalRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :cat_rental_requests do |t|
      
      t.timestamps
    end
  end
end
