class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.datetime :creationdate
      t.datetime :lastupdatedate
      t.integer :createduser_id
      t.integer :lastupdateuser_id
      t.string :companyassociation
      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
