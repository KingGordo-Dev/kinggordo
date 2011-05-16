class CreateFunctions < ActiveRecord::Migration
  def self.up
    create_table :functions do |t|
      t.string :name
      t.integer :film_id
      t.integer :salleinfo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :functions
  end
end
