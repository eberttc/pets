class AddRaceRefToPets < ActiveRecord::Migration
  def change
    add_reference :pets, :race, index: true, foreign_key: true
  end
end
