class RemoveMediumFromLinks < ActiveRecord::Migration
  def self.up
    change_table :links do |t|
      t.remove :link_end_a_medium_id
      t.remove :link_end_b_medium_id
      t.remove :link_medium_id
    end
  end

  def self.down
    change_table :links do |t|
      t.integer :link_end_a_medium_id
      t.integer :link_end_b_medium_id
      t.integer :link_medium_id
    end
  end
end
