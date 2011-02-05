class CreateParenthoods < ActiveRecord::Migration
  def self.up
    create_table :parenthoods do |t|
      t.integer :contact_id
      t.integer :parenthood_id
      t.timestamps
    end
  end

  def self.down
    drop_table :parenthoods
  end
end
