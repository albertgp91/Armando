class LettersController < ApplicationController
  before_action :set_letter, only: %i[show destroy]

  def index
    @letters = Letter.all
  end

  def create
    @letter = Letter.new(letter_params)
    @letter.user = current_user
    if @letter.save
      redirect_to letters_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def new
    @letter = Letter.new
  end

  def destroy
    @letter.destroy
    redirect_to letters_path, status: :see_other, notice: "The letter was successfuly deleted!"
  end

  private

  def set_letter
    @letter = Letter.find(params[:id])
  end

  def letter_params
    params.require(:letter).permit(:content, :subject)
  end
end
