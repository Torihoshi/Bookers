class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  #投稿
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/top'
  end

  #一覧
  def index
    @books = Book.all
  end

  #詳細
  def show
    @book = Book.find(params[:id])
  end

  #修正
  def edit

  end


  private
  #　ストロングパラメータ
  def book_params
    params.permit(:title, :body)
  end
end