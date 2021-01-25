class AddGenleIdToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :genle_id, :integer
  end
end
