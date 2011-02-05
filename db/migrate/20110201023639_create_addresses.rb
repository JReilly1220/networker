class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.integer :contact_id
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.boolean :default
      t.string :user_id
      t.boolean :current
      t.datetime :creationdate

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
