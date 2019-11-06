class CreateTwoWordAssociates < ActiveRecord::Migration[5.2]
  def change
    create_table :two_word_associates do |t|
      t.references :word1, foreign_key: {to_table: :words}
      t.references :word2, foreign_key: {to_table: :words}

      t.timestamps
    end
  end
end
