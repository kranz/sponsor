class AddRitornoToContributi < ActiveRecord::Migration
  def change
    add_column :contributi, :ritornoprevisto, :text
    add_column :contributi, :ritornoeffettivo, :text
    add_column :contributi, :offertatarget, :text
    add_column :contributi, :note, :text
    add_column :contributi, :datadelibera, :date
  end
end
