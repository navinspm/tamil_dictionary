class AddIndexOnWords < ActiveRecord::Migration
  def change
  	add_column :dictionaries, :id, :string
  	add_index "dictionaries", ["id"], name: "index_dictionaries_on_id", unique: true
  end
end
