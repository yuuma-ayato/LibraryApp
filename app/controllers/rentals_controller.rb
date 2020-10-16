class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :edit, :update, :destroy]

  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    if params[:back]
      render :new
    else
      if @rental.save
        redirect_to rentals_path, notice: "貸出日を登録しました！"
      else
        render :new
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @rental.update(rental_params)
      redirect_to @rental, notice: "貸出日を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @rental.destroy
    redirect_to rentals_path, notice:"貸出日を削除しました！"
  end

  private
  def rental_params
    params.require(:rental).permit(:book_name, :lending_start_date, :lending_end_date )
  end

  def set_rental
    @rental = Rental.find(params[:id])
  end

end
