class CandidaturesController < ApplicationController
  def new
    @mission = Mission.find(params[:mission_id])
    @candidature = Candidature.new
  end

  def create
    @mission = Mission.find(params[:mission_id])
    @candidature = Candidature.new(candidature_params)
    @candidature.mission = @mission
    if @candidature.save
      redirect_to mission_path(@mission)
    else
      render :new
    end
  end

  private

  def candidature_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:candidature).permit(:cover_letter, :end, :start, :num_of_days, :daily_price, :user_id)
  end
end
