class BooksController < ApplicationController

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		@book.user_id = current_user.id
		if @book.save
		 flash[:notice] = "successfully"
		 redirect_to books_path
		else
			render :new
		end
	end

	def index
		@books = Book.all
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	  def book_params
	  	params.require(:book).permit(:title, :body)
	  end

end