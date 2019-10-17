class SignupsController < ApplicationController

  def new
    @signup = Signup.new
    @campers = Camper.all
    @activities = Activity.all
  end


  def create
    @signup = Signup.create(sign_params)
    if @signup.valid?
      redirect_to @signup.camper
    else
      flash[:error] = @signup.errors.full_messages
      redirect_to new_signup_path
    end

end

private

def sign_params
  params.require(:signup).permit(:name, :time, :camper_id, :activity_id)
end
end
