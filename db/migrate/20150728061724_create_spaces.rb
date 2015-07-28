class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
