class AddClientToLinks < ActiveRecord::Migration
  def self.up
    change_table :links do |t|
      t.integer :client_id
    end
  end

  def self.down
    change_table :links do |t|
      t.remove :client_id
    end
  end
end
