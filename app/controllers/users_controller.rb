class UsersController < ApplicationController

    def show
      if current_user
          @user = User.find(params[:id])
      else 
        redirect_to new_user_session_path
      end
    end
  
  
    
  end