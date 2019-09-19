class LettersController < ApplicationController
  def index
  end

  def new
    @letter = Letter.new
  end

  def create
    Letter.create(content: params[:letter][:content])
    redirect_to new_letter_path
  end

end
