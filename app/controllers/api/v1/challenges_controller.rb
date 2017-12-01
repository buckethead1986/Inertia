class Api::V1::ChallengesController < ActionController::API
  def index
    @challenges = Challenge.all
    render json: @challenges.to_json(:include => {:user_challenges => {:include => :user }})
  end

  def show
    @challenge = Challenge.find_by(id: params[:id])
    render json: @challenge.to_json(:include => {:user_challenges => {:include => :user }})
  end
end
