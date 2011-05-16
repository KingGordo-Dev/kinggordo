class CreateMoviselects < ActiveRecord::Migration
  def self.up
    create_table :moviselects do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :moviselects
  end
end
