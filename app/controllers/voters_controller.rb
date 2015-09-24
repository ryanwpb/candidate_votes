class VotersController < ApplicationController
  def index
  end

  def create
    vr = Voter.new([name: params[:name], party: params[:party]])
    render json: vr.json
  end

  def show
    voter = Voter.find(params[:id])
    if voter.token == params[:token]
      render json: voter.to_json
    else
      render json: "You lose Carl Miller!"
    end
  end

  def update
    voter = Voter.find([name: params[:name], party: params[:party]])
    if voter.token == params[:token]
      render json: voter.to_json
    else
      render json: "You lose Carl Miller!"
    end
  end
end
