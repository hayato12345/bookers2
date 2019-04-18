class UsersController < ApplicationController

  def index
    @book = Book.new
    @user = current_user
    @users = User.all
  end
  def show
  	@user = User.find(params[:id])
    @book = Book.new
  	@books = @user.books.page(params[:page]).reverse_order
  end

  def edit
  	@user = User.find(params[:id])
    @user =  current_user
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to user_path(@user.id)
  end

  private

  def user_params
  	params.require(:user).permit(:name,:profile_image,:introduction)
  end
end



