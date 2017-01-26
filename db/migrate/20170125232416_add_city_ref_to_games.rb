class AddCityRefToGames < ActiveRecord::Migration[5.0]
  def change
    add_reference :games, :city, foreign_key: true
  end
end
