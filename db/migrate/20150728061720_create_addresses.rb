class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.integer :state
      t.string :landmark
      t.references :space, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
