class TwoWordAssociatesController < ApplicationController
  def home

  end
  def new
    words = Word.order("RAND()").limit(2)
    @word1 = words[0]
    @word2 = words[1]
    if @word2.id - @word1.id < 0
      tmp = @word1
      @word1 = @word2
      @word2 = tmp
    end
    @twa = TwoWordAssociate.find_by(word1: @word1, word2: @word2)
    if @twa
      @twa
    else
      @twa = TwoWordAssociate.create!(word1: @word1, word2: @word2)
    end
  end
end
