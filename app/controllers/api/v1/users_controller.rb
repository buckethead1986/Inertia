class Api::V1::UsersController < ActionController::API
  def index
    @users = User.all
    render json: @users.to_json(:include => {:user_challenges => {:include => :challenge }})
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user.to_json(:include => {:user_challenges => {:include => :challenge }})
  end

  def create
    @user = User.create(username: params[:username], password: params[:password], image_url: params[:image_url])
    render json: @user.to_json
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.tagline = user_params[:tagline]
    @user.image_url = user_params[:image_url]
    @user.save
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :image_url, :tagline)
  end
end
