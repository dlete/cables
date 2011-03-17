class AddMediaToCircuits < ActiveRecord::Migration
  def self.up
    add_column :circuits, :medium_id, :integer
  end

  def self.down
    remove_column :circuits, :medium_id
  end
end
