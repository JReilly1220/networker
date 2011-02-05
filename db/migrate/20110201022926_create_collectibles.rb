class CreateCollectibles < ActiveRecord::Migration
  def self.up
    create_table :collectibles do |t|
      t.integer :contact_id
      t.string :piece
      t.integer :year
      t.string :artist
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :collectibles
  end
end
