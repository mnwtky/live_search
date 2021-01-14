class RenameGenleIdColumnToGenreId < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :genle_id, :genre_id
  end
end
