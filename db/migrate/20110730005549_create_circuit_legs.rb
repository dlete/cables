class CreateCircuitLegs < ActiveRecord::Migration
  def self.up
    create_table :circuit_legs do |t|
      t.references :circuit
      t.references :link

      t.timestamps
    end
  end

  def self.down
    drop_table :circuit_legs
  end
end
