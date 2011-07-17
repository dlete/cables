class DropCircuits < ActiveRecord::Migration
  def self.up
    drop_table :circuits
  end

  def self.down
  end
end
