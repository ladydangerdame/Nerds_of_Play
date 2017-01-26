class AddGameRefToCities < ActiveRecord::Migration[5.0]
  def change
    add_reference :cities, :game, foreign_key: true
  end
end
