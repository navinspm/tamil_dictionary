class AddSlugToDictionaries < ActiveRecord::Migration
  def change
    add_column :dictionaries, :slug, :string
  end
end
