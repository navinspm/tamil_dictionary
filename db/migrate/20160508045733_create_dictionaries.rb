class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.string :word
      t.string :synonyms
      t.string :antonyms
      t.string :related_to

      t.timestamps null: false
    end
  end
end
