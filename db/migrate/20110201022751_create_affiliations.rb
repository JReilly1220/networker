class CreateAffiliations < ActiveRecord::Migration
  def self.up
    create_table :affiliations do |t|
      t.integer :contact_id
      t.integer :company_id
      t.string :affiliation

      t.timestamps
    end
  end

  def self.down
    drop_table :affiliations
  end
end
