class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.integer :contact_id
      t.boolean :default
      t.string :filename
      t.integer :user_id
      t.datetime :creationdate

      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
