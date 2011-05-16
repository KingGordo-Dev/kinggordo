class CreateFilms < ActiveRecord::Migration
  def self.up
    create_table :films do |t|
      t.string :name
      t.string :titlea
      t.string :titleb
      t.string :titlec
      t.string :titled
      t.string :titlee
      t.string :company
      t.string :country
      t.date :start_date
      t.date :year_date
      t.string :lenght
      t.string :color
      t.string :sound
      t.string :based_on
      t.string :autor
      t.integer :moviselect_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :films
  end
end
