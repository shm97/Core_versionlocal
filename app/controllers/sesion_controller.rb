class SesionController < ApplicationController
  #before_action :authorized, only: [:auto_login]
  #before_action :authorized_c, only: [:login]
  # REGISTER
  def create
    @user = User.create(user_params)
    if @user.valid?
        puts @user.id
        token = encode_token({user_id: @user.id})
        render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  # LOGGING IN
  def login
    
    #@user = User.find_by(username: params[:username])
    
    puts 'debug en login', @user
    @user = User.find_by(username: @user['username'])
    
    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end


  def auto_login

    authorized
    puts 'Debug en auto_login', @user
    render json: {message: @user}
  end

  private

  def user_params
    params.permit(:username, :password, :age)
  end
    
    
end
