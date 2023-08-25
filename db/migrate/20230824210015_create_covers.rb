class CreateCovers < ActiveRecord::Migration[7.0]
  def change
    create_table :covers do |t|
      t.string :cover_type
      t.string :cover_format
      t.string :cover_paper
      t.string :cover_colors
      t.string :cover_finish
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
