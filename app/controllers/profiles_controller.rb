
class ProfilesController < ApplicationController

      def new
        @profile = Profile.new
      end

      def create 
        @profile = Profile.new(profile_params)
        @profile.user = current_user
        @profile.save
        redirect_to user_profile_path(user_id: current_user.id, id: @profile.id)
      end
    
      def show
        if @Profile.find(params[:id])
            @profile = Profile.find(params[:id])
        else
            redirect_to new_user_profile_path
        end
        # @comments = Comment.where(product_id: params[:id])
      end

      def edit
        @profile = Profile.find(params[:id])
      end
    
    private
      def profile_params
        params.require(:article).permit(:size, :height, :weight, :belly, :watch, :watch_hand, :shoulder_slope, :measurement_method)
      end
    
end