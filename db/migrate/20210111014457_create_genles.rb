class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genles do |t|

      t.timestamps
    end
  end
end
