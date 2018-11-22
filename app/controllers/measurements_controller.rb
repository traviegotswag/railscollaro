
class MeasurementsController < ApplicationController

    def new
    #   @user = User.find(params[:user_id])
    #   redirect_to user_profile_path(id: @user.profile.id) if @user.profile
      @measurement = Measurement.new
    end

    def create 
        @measurement = Measurement.new(measurement_params)
        @measurement.user = current_user
        @measurement.save
        # flash[:success] = "Success!"
        redirect_to user_path(id: current_user.id)
    end
  
    def edit
        @user = current_user
        @measurement = Measurement.find(params[:id])
    end

    def update
        @measurement = Measurement.find(params[:id])
        @measurement.update(measurement_params)

        redirect_to user_path(id: current_user.id)
    end

    # def show
    #   @profile = Profile.find(params[:id])
    # end



  private
    def measurement_params
      params.require(:measurement).permit(:name, :shoulder, :chest, :waist, :hips, :shirt_length, :sleeve_length, :elbow, :left_cuff, :right_cuff, :cuff_length, :collar_width)
    end
  
end