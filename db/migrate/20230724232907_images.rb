class Images < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :name
      t.references :tea, :image, foreign_key: true
        
      t.timestamp
    end
  end
end
