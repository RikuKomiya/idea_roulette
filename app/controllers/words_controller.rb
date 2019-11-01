class WordsController < ApplicationController
  before_action :set_word, only: [:edit,:update,:destroy]

  def index
    @words = Word.all
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    if @word.save
      redirect_to new_word_path, notice: "「#{@word.name}」を登録しました"
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy
    @word.destroy
    redirect_to words_path, notice: "「#{@word.name}」を削除しました"
  end

  def confirm_new
  end


  private
  def word_params
    params.require(:word).permit(:name)
  end

  def set_word
    @word = Word.find(params[:id])
  end
end
