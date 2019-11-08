class Word < ApplicationRecord
  has_many :word1, class_name: 'TwoWordAssociate', foreign_key: "word1_id", dependent: :destroy
  has_many :word2, class_name: 'TwoWordAssociate', :foreign_key => 'word2_id', dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true
end
