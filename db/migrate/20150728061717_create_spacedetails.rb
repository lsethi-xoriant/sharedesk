class CreateSpacedetails < ActiveRecord::Migration
  def change
    create_table :spacedetails do |t|
      t.integer :capacity
      t.integer :available
      t.decimal :area
      t.integer :rent_frequency
      t.integer :price
      t.references :space, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
