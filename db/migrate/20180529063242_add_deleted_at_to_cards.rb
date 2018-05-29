class AddDeletedAtToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :deleted_at, :datetime
  end
end
