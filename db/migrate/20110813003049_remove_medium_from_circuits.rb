class RemoveMediumFromCircuits < ActiveRecord::Migration
  def self.up
    change_table :circuits do |t|
      t.remove :circuit_end_a_medium_id
      t.remove :circuit_end_b_medium_id
      t.remove :circuit_medium_id
    end
  end

  def self.down
    change_table :circuits do |t|
      t.integer :circuit_end_a_medium_id
      t.integer :circuit_end_b_medium_id
      t.integer :circuit_medium_id
    end
  end
end
