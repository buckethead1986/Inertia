class Api::V1::UserChallengesController < ActionController::API
  def index
    @userChallenges = UserChallenge.all
    render json: @userChallenges.to_json
  end
end
