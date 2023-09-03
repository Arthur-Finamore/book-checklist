class AddGuardaFieldsToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :guarda_format, :string
    add_column :books, :guarda_paper, :string
    add_column :books, :guarda_colors, :string
    add_column :books, :guarda_finish, :string
  end
end
