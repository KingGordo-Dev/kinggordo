class CreateFilmUsers < ActiveRecord::Migration
  def self.up
    create_table :film_users do |t|
      t.integer :film_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :film_users
  end
end
