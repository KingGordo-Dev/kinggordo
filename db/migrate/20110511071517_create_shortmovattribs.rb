class CreateShortmovattribs < ActiveRecord::Migration
  def self.up
    create_table :shortmovattribs do |t|
      t.string :name
      t.string :based_on
      t.integer :film_id
      t.integer :joint_id
      t.integer :jointb_id
      t.integer :jointc_id
      t.timestamps
    end
  end

  def self.down
    drop_table :shortmovattribs
  end
end
