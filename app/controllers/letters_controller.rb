class LettersController < ApplicationController
  before_action :set_letter, only: %i[show destroy]

  def inbox
    @letters = Letter.where(receiver_id: current_user.id)
  end

  def sent
    @letters = Letter.where(user_id: current_user.id).reverse
  end

  def create
    @letter = Letter.new(letter_params)
    @letter.user = current_user
    if @letter.save
      redirect_to sent_path
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
    params.require(:letter).permit(:content, :subject, :receiver_id, photos: [])
  end
end
