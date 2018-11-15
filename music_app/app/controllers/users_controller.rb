class UsersController < ApplicationController


  def create
    @user = User.new(user_params)
    # debugger
    if @user.save
      login(@user)
    else
      flash.now[:errors]. << @user.errors.full_messages
      render :new
    end

  end

  def new
    @user = User.new
    render :new
  end

  def show

  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
