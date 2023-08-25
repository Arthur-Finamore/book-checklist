class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :code
      t.integer :pages
      t.integer :tiragem
      t.string :selo
      t.date :delivery_date
      t.string :fitilho
      t.string :cabeceado
      t.string :pintura_lateral
      t.boolean :sticker
      t.boolean :encartes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
