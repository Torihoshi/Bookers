class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  #投稿
  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
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
    @book = Book.find(params[:id])
  end

  #更新
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book.id)
  end

#削除
def destroy
  book = Book.find(params[:id])
  book.destroy
  redirect_to '/books'
end

  private
  #　ストロングパラメータ
  def book_params
    params.permit(:title, :body)
  end
end