class AddClientToCircuits < ActiveRecord::Migration
  def self.up
    change_table :circuits do |t|
      t.integer :client_id
    end
  end

  def self.down
    change_table :circuits do |t|
      t.remove :client_id
    end
  end
end
