class AddCoverAndMioloFieldsToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :cover_type, :string
    add_column :books, :cover_format, :string
    add_column :books, :cover_paper, :string
    add_column :books, :cover_colors, :string
    add_column :books, :cover_finish, :string
    add_column :books, :miolo_format, :string
    add_column :books, :miolo_paper, :string
    add_column :books, :miolo_colors, :string
    add_column :books, :miolo_finish, :string
  end
end
