class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :show_type
      t.string :opening_date
      t.string :closing_date
      t.integer :num_performance

      t.timestamps
    end
  end
end
