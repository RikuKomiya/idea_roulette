class AddTwoWordAssociateIdToIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :two_word_associate_id, :integer
  end
end
