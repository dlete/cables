class CreateLinkLegs < ActiveRecord::Migration
  def self.up
    create_table :link_legs do |t|
      t.references :link
      t.references :circuit

      t.timestamps
    end
  end

  def self.down
    drop_table :link_legs
  end
end
