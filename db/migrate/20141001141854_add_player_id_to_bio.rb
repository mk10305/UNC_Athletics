class AddPlayerIdToBio < ActiveRecord::Migration
  def change
    add_column :bios, :player_id, :integer
  end
end
