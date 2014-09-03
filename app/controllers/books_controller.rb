class BooksController < ApplicationController

before_filter :initialize_cart

def new
end


def create
  @book  = Book.new(book_params)
 
  @book.save
  redirect_to @book
end

def show
  @book	   = Book.find(params[:id])
end

def index
	@books=Book.all
end

def destroy
  @book = Book.find(params[:id])
  @book.destroy
 
  redirect_to '/Browse'
end


def edit
	@book = Book.find(params[:id])

end


def update
	@book = Book.find(params[:id])

	if @book.update(book_params)
		redirect_to @book
	else 
		render 'edit'
	end
end


private
  def book_params
    params.require(:book).permit(:name ,:author, :price)
  end


end
