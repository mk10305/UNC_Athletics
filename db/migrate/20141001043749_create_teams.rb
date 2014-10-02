class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :gender
      t.string :coach
      t.string :assistant_coach
      t.string :student_coach
      t.text :team_pic
    end
  end
end