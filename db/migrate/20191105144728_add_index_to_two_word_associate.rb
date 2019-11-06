class AddIndexToTwoWordAssociate < ActiveRecord::Migration[5.2]
  def change
    add_index :two_word_associates, [:word1_id,:word2_id], unique: true
  end
end
