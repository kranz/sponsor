class AddCod029ToRichiedente < ActiveRecord::Migration
  def change
    add_column :richiedenti, :cod029, :integer
  end
end
