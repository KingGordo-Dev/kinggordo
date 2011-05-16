class CreateSalleinfoattribs < ActiveRecord::Migration
  def self.up
    create_table :salleinfoattribs do |t|
      t.string :name
      t.integer :salleinfo_id
      t.timestamps
    end
  end

  def self.down
    drop_table :salleinfoattribs
  end
end
