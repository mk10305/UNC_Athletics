class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.text :personal_info
      t.text :current_year
      t.text :more_info
    end
  end
end
