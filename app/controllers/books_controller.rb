class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if params[:back]
      render :new
    else
      if @book.save
        redirect_to @book, notice: "本を登録しました！"
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
    if @book.update(book_params)
      redirect_to @book, notice: "本を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path, notice:"本を削除しました！"
  end

  private
  def book_params
    params.require(:book).permit( :title, :author, :content )
  end

  def set_book
    @book = Book.find(params[:id])
  end

end
