class CandidaturesController < ApplicationController
  def new
    @mission = Mission.find(params[:mission_id])
    @candidature = Candidature.new
    authorize @candidature
  end

  def dashboard
    skip_authorization
    @candidatures = policy_scope(Candidature).where(user: current_user).order(created_at: :desc)
    # raise
  end

  def create
    @mission = Mission.find(params[:mission_id])
    @candidature = Candidature.new(candidature_params)
    @candidature.mission = @mission
    @candidature.user = current_user
    @candidature.save
    @candidature.daily_price = @mission.daily_price
    @candidature.num_of_days = (@candidature.end_date - @candidature.start_date).to_i
    @candidature.total_price = @candidature.num_of_days * @candidature.mission.daily_price
    authorize @mission
    if @candidature.save
      redirect_to missions_path
    else
      render :new
    end
  end

  def edit
    # @candidature = Candidature.find(params[:id])
  end

  def update
    skip_authorization
    set_candidature
    mission = @candidature.mission
    if params[:candidature][:status] == "true"
      @candidature.status = "accepted"
      @candidature.save
      redirect_to details_candidatures_path(mission)
    else
      @candidature.status = "declined"
      @candidature.save
      redirect_to details_candidatures_path(mission)
    end
  end


  def status_validate
    skip_authorization
    if @candidature.status == "pending"
      @candidature.status = "accepted"
    else
    end
  end

  def status_decline
    skip_authorization
    if @candidature.status == "pending"
      @candidature.status = "declined"
    else
      return
    end
  end

  private

  # def price_calculation
  #   duration = params[:end_date] - params[:start_date]
  #   total = duration * @mission.daily_price
  #   total
  # end

  def candidature_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:candidature).permit(:cover_letter, :end_date, :start_date, :num_of_days, :daily_price, :user_id, :candidature)
  end

  def set_candidature
    @candidature = Candidature.find(params[:id])
  end
end
