class IdeasController < ApplicationController
  before_action :spin_words_roulette, only: [:new]

  def new
    @idea = @twa.ideas.new
  end

  def create
    twa = TwoWordAssociate.find(params[:idea][:twa_id])
    @idea = twa.ideas.new(idea_params)
    if @idea.save
      redirect_to root_path, notice: "「#{@idea.name}」を作成しました"
    else
      render :new
    end
  end

  private
  def idea_params
    params.require(:idea).permit(:name, :description)
  end

  def spin_words_roulette
    words = Word.order("RAND()").limit(2)
    word1 = words[0]
    word2 = words[1]
    if word2.id - word1.id < 0
      tmp = word1
      word1 = word2
      word2 = tmp
    end
    twa = TwoWordAssociate.find_by(word1: word1, word2: word2)
    if twa
      @twa = twa
    else
      @twa = TwoWordAssociate.create!(word1: word1, word2: word2)
    end
  end
end
