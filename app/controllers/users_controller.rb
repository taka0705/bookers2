class UsersController < ApplicationController


  def show
     @user=User.find(params[:id])
    # URLから抽出したユーザーのデータ
     @books=@user.books.all
    #抽出したユーザーのすべての本
  end

  def index
    @user=current_user
    @users=User.all
  end

  def edit
    @book=Book.find(params[:id])
  end

end