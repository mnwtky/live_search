class ChangeGenlesToGenres < ActiveRecord::Migration[6.0]
  def change
    rename_table :genles, :genres
  end
end
