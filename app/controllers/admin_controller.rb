class AdminController < ApplicationController
    def index
      @events = Event.all
      @users = User.all
    end
  
    def delete_user
      user = User.find(params[:id])
      user.destroy
      redirect_to admin_path, notice: "User deleted successfully"
    end
  
    def delete_event
      @event = Event.find(params[:id])
      @event.destroy
      redirect_to admin_path, notice: 'Event was successfully deleted.'
      
    end
  end