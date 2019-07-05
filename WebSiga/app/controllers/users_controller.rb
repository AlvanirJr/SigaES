class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Administrador cadastrado com sucesso!!"
      redirect_to root_url       #Redirecionar para a pagina index

    else
      render 'new'
    end

  end

  private
  def user_params
    params.require(:user).permit(:nome, :email, :password, :password_confirmation )
  end
end
