class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :show_type
      t.string :opening_date
      t.string :closing_date
      t.integer :performances
      t.integer :likes
      t.string :image

      t.timestamps
    end
  end
end
