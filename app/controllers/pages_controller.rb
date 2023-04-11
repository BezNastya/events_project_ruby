class PagesController < ApplicationController
    before_action :set_event, only: [:register, :cancel]


    def index
        @events = Event.all
    end
    
    def register
        current_user.events << @event
        render json: { enrolled: true }
    end
    
      def cancel
        current_user.events.delete(@event)
        render json: { enrolled: false }
    end
    
      private
    
      def set_event
        @event = Event.find(params[:id])
      end
    end