class AddCoverpathToGames < ActiveRecord::Migration[5.0]
  def change
    add_column("games","coverpath",:string)
  end
end
