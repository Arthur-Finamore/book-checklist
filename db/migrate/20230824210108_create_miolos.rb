class CreateMiolos < ActiveRecord::Migration[7.0]
  def change
    create_table :miolos do |t|
      t.string :miolo_format
      t.string :miolo_paper
      t.string :miolo_colors
      t.string :miolo_finish
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
