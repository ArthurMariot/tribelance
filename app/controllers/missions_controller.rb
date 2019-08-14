class MissionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_missions, only: [:show, :edit, :update, :destroy, :details_candidatures]

  def index
    skip_authorization
    @missions = policy_scope(Mission).order(created_at: :desc)
  end

  def dashboard
    skip_authorization
    @missions = policy_scope(Mission).where(user: current_user).order(created_at: :desc)
  end

  def new
    @mission = Mission.new
    authorize @mission
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.user = current_user
    authorize @mission
    if @mission.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def show
    skip_authorization
    # @mission = Mission.find(params[:id])
  end

  def edit
    # @mission = Mission.find(params[:id])
  end

  def update
    # @mission = Mission.find(params[:id])
    redirect_to mission_path(@mission)
  end

  def destroy
    # @mission = Mission.find(params[:id])
    @mission.destroy
    redirect_to missions_path
  end

  def details_candidatures
    authorize @mission
    @candidatures = @mission.candidatures
  end

  def details_candidatures
    authorize @mission
    @candidatures = @mission.candidatures
  end

  private

  def mission_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:mission).permit(:description, :logo, :photo, :company, :headquarter, :num_of_days, :daily_price, :user_id, :title)
  end

  def set_missions
    @mission = Mission.find(params[:id])
  end
end

