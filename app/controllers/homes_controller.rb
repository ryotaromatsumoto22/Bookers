class HomesController < ApplicationController

  def root
  end

  def books
  	@books = Book.all.order(created_at: :asc)
  	@book = Book.new
  end

  def create
  	@books = Book.all.order(created_at: :asc)
  	@book = Book.new(book_params)
  	if @book.save
  		redirect_to book_path(@book.id), notice: "Your book was successfully created!"
  	else
  		render action: :books
  	end
  end

  def show
  	@book = Book.find(params[:id])
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
  	if @book.update(book_params)
  		redirect_to book_path(@book.id), notice: "Your book was successfully updated!"
  	else
      render action: :edit
  	end
  end

  def destroy
  	book = Book.find(params[:id])
  	book.destroy
  	redirect_to books_path, notice: "Your book was successfully destroyed!"
  end

end

 private 
 def book_params
	params.require(:book). permit(:title,:body)
end