class CreateNominees < ActiveRecord::Migration[6.0]
  def change
    create_table :nominees do |t|
      t.string :name
      t.boolean :recipient
      t.belongs_to :award, null: false, foreign_key: true

      t.timestamps
    end
  end
end
