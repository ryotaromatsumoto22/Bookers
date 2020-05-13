class HomesController < ApplicationController

  def top
  end

  def new
  	@books =Book.all
  	@book = Book.new
  end

  def create
  	book = Book.new(book_params)
  	book.save
  	redirect_to '/new'
  end

  def show
  	@book = Book.find(params[:id])
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def update
  	book = Book.find(params[:id])
  	book.update(book_params)
  	redirect_to ditail_path(book.id)
  end

  def destroy
  	book = Book.find(params[:id])
  	book.destroy
  	redirect_to '/new'
  end

end

 private 
 def book_params
	params.require(:book). permit(:title,:body)
end