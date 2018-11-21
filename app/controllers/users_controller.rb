class UsersController < ApplicationController

    def show
        @user = current_user
        @profile = Profile.find_by(id: @user.profile.id)
        @measurement1 = Measurement.where(user_id: current_user.id)[0]
        @measurement2 = Measurement.where(user_id: current_user.id)[1]
    end

end 