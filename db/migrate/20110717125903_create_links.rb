class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string :reference
      t.integer :provider_id
      t.integer :link_end_a_endpoint_id
      t.integer :link_end_b_endpoint_id
      t.integer :link_end_a_medium_id
      t.integer :link_end_b_medium_id
      t.integer :link_medium_id

      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
