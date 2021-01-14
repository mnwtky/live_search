class AddAreaIdToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :area_id, :integer
  end
end
