class Api::V1::CommentsController < ActionController::API
  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    @user = User.create(content: params[:content], user_id: params[:user_id], challenge_id: params[:challenge_id])
    render json: @user.to_json
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
