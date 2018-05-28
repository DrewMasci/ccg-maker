class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :card_name
      t.integer :hit_points
      t.integer :attack_points
      t.string :card_art, :default => nil

      t.timestamps
    end
  end
end
