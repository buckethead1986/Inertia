class Api::V1::CommentsController < ActionController::API
  def index
    @comments = Comment.all
    render json: @comments.to_json({:include => :user})
  end

  def create
    @comment = Comment.create(comments_params)
    render json: @comment.to_json
  end

  private

  def comments_params
    params.require(:comment).permit(:content, :user_id, :challenge_id)
  end
end
