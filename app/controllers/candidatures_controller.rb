class CandidaturesController < ApplicationController
  def new
    @mission = Mission.find(params[:mission_id])
    @candidature = Candidature.new
    authorize @candidature
  end

  def create
    @mission = Mission.find(params[:mission_id])
    @candidature = Candidature.new(candidature_params)
    @candidature.mission = @mission
    @candidature.user = current_user
    authorize @mission
    if @candidature.save
      redirect_to missions_path
    else
      render :new
    end
  end

  private

  def candidature_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:candidature).permit(:cover_letter, :end_date, :start_date, :num_of_days, :daily_price, :user_id)
  end

  def set_candidature
    @mission = Mission.find(params[:id])
  end
end
