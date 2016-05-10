class ChangeColumnType < ActiveRecord::Migration
  def change
  	change_column :dictionaries, :Word, :text
  	change_column :dictionaries, :synonyms, :text
  	change_column :dictionaries, :antonyms, :text
  	change_column :dictionaries, :related_to, :text
  	change_column :dictionaries, :origin, :text
  end
end
