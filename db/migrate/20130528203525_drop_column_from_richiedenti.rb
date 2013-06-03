class DropColumnFromRichiedenti < ActiveRecord::Migration
  def up
  	remove_column  :richiedenti, :sigla
  end

  def down
  	add_column  :richiedenti, :sigla, :string
  end
end
