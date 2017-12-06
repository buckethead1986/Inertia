class Api::V1::UsersController < ActionController::API
  def index
    @users = User.all
    render json: @users.to_json(:include => {:user_challenges => {:include => :challenge }})
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @users.to_json(:include => {:user_challenges => {:include => :challenge }})
  end

  def show
    @user = User.find_by(id: params[:id])

    render json: @user
  end

  def create
    @user = User.create(username: params[:username], password: params[:password])
    render json: @user.to_json
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
