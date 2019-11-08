class TwoWordAssociate < ApplicationRecord
  belongs_to :word1, class_name: 'Word', foreign_key: 'word1_id'
  belongs_to :word2, class_name: 'Word', foreign_key: 'word2_id'
  has_many :ideas
end
