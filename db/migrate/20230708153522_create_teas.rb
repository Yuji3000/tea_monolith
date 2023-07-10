class CreateTeas < ActiveRecord::Migration[5.2]
  def change
    create_table :teas do |t|
      t.string :title
      t.string :description
      t.float :temperature_f
      t.float :brew_time_seconds
      t.float :price_usd

      t.timestamps
    end
  end
end
