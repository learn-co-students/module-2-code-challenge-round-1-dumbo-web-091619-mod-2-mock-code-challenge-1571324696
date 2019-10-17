class SignupsController < ApplicationController

  def new
    # need a new instance - form_for
    @signup = Signup.new
    # need for the associations - collection_select
    @campers = Camper.all
    @activities = Activity.all
  end

  def create
    @signup = Signup.create(signup_params)
    # Signup.create(params.require(:signup).permit(:activity_id, :camper_id, :time))
    if @signup.valid?
      flash[:notice] = "Post successfully created"

      redirect_to camper_path(signup_params[:camper_id])
      # redirect_to camper_path(@signup.camper)
    else
      flash[:errors] = @signup.errors.full_messages
      
      # response
      redirect_to new_signup_path
    end
  end

  private

  def signup_params
    params.require(:signup).permit(:time, :camper_id, :activity_id)
  end

end
