class CreateEmployers < ActiveRecord::Migration
  def self.up
    create_table :employers do |t|
      t.integer :contact_id
      t.integer :company_id
      t.string :position
      t.boolean :current
      t.integer :user_id
      t.datetime :creationddate
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :employers
  end
end
