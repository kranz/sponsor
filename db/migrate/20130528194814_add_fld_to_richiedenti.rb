class AddFldToRichiedenti < ActiveRecord::Migration
  def change
    add_column :richiedenti, :sigla, :string
    add_column :richiedenti, :codfiscale, :string
    add_column :richiedenti, :codice, :string
  end
end
