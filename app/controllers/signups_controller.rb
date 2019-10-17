class SignupsController < ApplicationController
    def index
      @signups = Signup.all
    end

    def new
      @signup = Signup.new
    end

    def create
      @signup = Signup.create(signup_params)
      @camper = Camper.find(@signup.camper_id)
      redirect_to camper_path(@camper)
    end

    private

    def signup_params
      params.require(:signup).permit(:camper_id, :activity_id, :time)
    end 
  end
  