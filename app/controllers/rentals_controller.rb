class RentalsController < ApplicationController
  def create
    rental = current_user.rentals.create(book_id: params[:book_id])
    redirect_to books_url, notice: "本を借りました"
  end
  def destroy
    rental = current_user.rentals.find_by(id: params[:id]).destroy
    redirect_to books_url, notice: "本を返却しました"
  end

  private
  def rental_params
    params.require(:rental).permit(:lending_start_date, :lending_end_date )
  end
end
