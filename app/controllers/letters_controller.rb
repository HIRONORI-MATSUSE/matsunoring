class LettersController < ApplicationController
  def index
    @letters = Letter.all
  end

  def new
    @letter = Letter.new
  end

  def create
    Letter.create(letter_params)
    redirect_to new_letter_path
  end

  private

  def letter_params
    params.require(:letter).permit(:content)
  end

end
