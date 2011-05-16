class CreateTecnicals < ActiveRecord::Migration
  def self.up
    create_table :tecnicals do |t|
      t.string :name
      t.integer :film_id
      t.timestamps
    end
  end

  def self.down
    drop_table :tecnicals
  end
end
