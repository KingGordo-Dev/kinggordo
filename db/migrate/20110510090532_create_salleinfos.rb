class CreateSalleinfos < ActiveRecord::Migration
  def self.up
    create_table :salleinfos do |t|
      t.string :name
      t.integer :salle_id
      t.timestamps
    end
  end

  def self.down
    drop_table :salleinfos
  end
end
