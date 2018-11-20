
class ProfilesController < ApplicationController

      def new
        @user = User.find(params[:user_id])
        redirect_to user_profile_path(id: @user.profile.id) if @user.profile

        @profile = Profile.new
      end

      def create 
        @profile = Profile.new(profile_params)
        @profile.user = current_user
        @profile.save
        # flash[:success] = "Profile has been created successfully."
        redirect_to user_profile_path(user_id: current_user.id, id: @profile.id)
      end
    
      def show
        @profile = Profile.find(params[:id])
        @measurement1 = Measurement.where(user_id: current_user.id)[0]
        @measurement2 = Measurement.where(user_id: current_user.id)[1]
      end

      def edit
        @profile = Profile.find(params[:id])
      end

      def update
        @profile = Profile.find(params[:id])
        @profile.update(profile_params)
    
        redirect_to user_profile_path
      end

    private
      def profile_params
        params.require(:profile).permit(:size, :height, :weight, :belly, :watch, :watch_hand, :shoulder_slope, :measurement_method)
      end
    
end