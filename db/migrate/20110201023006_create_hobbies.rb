class CreateHobbies < ActiveRecord::Migration
  def self.up
    create_table :hobbies do |t|
      t.integer :contact_id
      t.string :hobby

      t.timestamps
    end
  end

  def self.down
    drop_table :hobbies
  end
end
