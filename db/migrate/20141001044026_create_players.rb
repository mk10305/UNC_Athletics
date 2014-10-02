class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :player_name
      t.string :player_year
      t.string :player_hometown
      t.text :player_pic
    end
  end
end
