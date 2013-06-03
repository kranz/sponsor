class AddFldToFiliali < ActiveRecord::Migration
  def change
    add_column :filiali, :codarea, :string
    add_column :filiali, :provincia_id, :integer
  end
end
