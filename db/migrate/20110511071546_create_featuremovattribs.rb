class CreateFeaturemovattribs < ActiveRecord::Migration
  def self.up
    create_table :featuremovattribs do |t|
      t.string :name
      t.integer :film_id
      t.integer :joint_id
      t.integer :jointb_id
      t.integer :jointc_id
      t.timestamps
    end
  end

  def self.down
    drop_table :featuremovattribs
  end
end
