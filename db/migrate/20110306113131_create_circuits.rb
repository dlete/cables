class CreateCircuits < ActiveRecord::Migration
  def self.up
    create_table :circuits do |t|
      t.string :reference
      t.references :provider
      t.integer :end_a
      t.integer :end_b

      t.timestamps
    end
  end

  def self.down
    drop_table :circuits
  end
end
