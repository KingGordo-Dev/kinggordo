class CreateJointbs < ActiveRecord::Migration
  def self.up
    create_table :jointbs do |t|
      t.integer :film_id
      t.integer :ville_id
      t.integer :salle_id
      t.string :titreoriginal
      t.string :titreoriginalb
      t.string :genre
      t.string :date
      t.string :price
      t.string :show
      t.date :start_date
      t.date :end_date
      t.string :schedule
      t.string :onstage
      t.string :episode
      t.string :audience
      t.string :source
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :jointbs
  end
end
