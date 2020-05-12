class HomesController < ApplicationController
  def index
  end

  def show
  	@book = Book.find(params[:id])
  end

  def new
  	@bookall =Book.all
  	@book = Book.new
  end

  def create
  	book = Book.new(book_params)
  	book.save
  	redirect_to '/new'
  end

  def edit
  end
end

 private 
 def book_params
	params.require(:book). permit(:title,:body)
end