class LettersController < ApplicationController
  before_action :set_letter, only:[:show, :edit, :update]

  def index
    @letters = Letter.all
  end

  def new
    @letter = Letter.new
  end

  def create
    @letter = Letter.new(letter_params)
    if @letter.save
      redirect_to letters_path, notice: "Letterを作成しました"
    else
      render :new
    end
  end

  def update
    if @letter.update(letter_params)
      redirect_to letters_path, notice: "Letterを編集しました。"
    else
      render :edit
    end
  end
  
  private

  def letter_params
    params.require(:letter).permit(:content)
  end

  def set_letter
   @letter = Letter.find(params[:id])
  end


end
