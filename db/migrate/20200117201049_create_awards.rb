class CreateAwards < ActiveRecord::Migration[6.0]
  def change
    create_table :awards do |t|
      t.string :award_ceremony
      t.string :category
      t.belongs_to :show, null: false, foreign_key: true

      t.timestamps
    end
  end
end
