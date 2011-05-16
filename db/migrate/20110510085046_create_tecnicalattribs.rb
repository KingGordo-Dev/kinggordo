class CreateTecnicalattribs < ActiveRecord::Migration
  def self.up
    create_table :tecnicalattribs do |t|
      t.string :name
      t.integer :tecnical_id
      t.timestamps
    end
  end

  def self.down
    drop_table :tecnicalattribs
  end
end
