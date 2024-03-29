class BooksController < ApplicationController

  #データの新規作成フォームを表示する
  def new
    @book = Book.new
  end

  #データを追加（保存）する
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  #データの一覧を表示する
  def index
    @book = Book.new
    @books = Book.all
  end

  #データの内容（詳細）を表示する
  def show
    @book = Book.find(params[:id])
  end

  #データを更新するためのフォームを表示する
  def edit
    @book = Book.find(params[:id])
  end

  #データを更新する
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  #データを削除する
  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed."
    redirect_to '/books'
  end

  private
  #　ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end