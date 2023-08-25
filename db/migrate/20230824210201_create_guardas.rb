class CreateGuardas < ActiveRecord::Migration[7.0]
  def change
    create_table :guardas do |t|
      t.string :guarda_format
      t.string :guarda_paper
      t.string :guarda_colors
      t.string :guarda_finish
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
