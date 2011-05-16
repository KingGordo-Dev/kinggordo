class CreateSalles < ActiveRecord::Migration
  def self.up
    create_table :salles do |t|
       t.string :name
       t.string :district
       t.string :adresse
       t.string :owner
       t.string :place
       t.string :orchester
       t.string :open
       t.string :source
       t.text :comment
       t.integer :ville_id
       
       t.timestamps
    end
  end

  def self.down
    drop_table :salles
  end
end
