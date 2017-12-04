class Api::V1::UserChallengesController < ActionController::API
  def index
    @userChallenges = UserChallenge.all
    render json: @userChallenges.to_json
  end

  def create
    @user_challenge = UserChallenge.create(user_challenge_params)
    render json: @user_challenge.to_json
  end


  private

  def user_challenge_params
    params.require(:user_challenge).permit(:user_id, :challenge_id, :role)
  end
end
