class CreateDictionary < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.string :Word
      t.string :synonyms
      t.string :antonyms
      t.string :related_to
      t.string :origin
    end
  end
end
