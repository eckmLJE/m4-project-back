module Api
  module V1
    class EventsController < ApplicationController

      def index
        render json: Event.includes(:users, :comments), include: ["users", "comments"]
      end

      def create
        event = Event.create(event_params)
        render json: event
      end

      def add_user
        event = Event.find(event_params["id"])
        user = User.find(event_params["user_id"])
        event.users << user
        render json: event
      end

      private

      def event_params
        params.permit(:id, :name, :venue, :date, :user_id)
      end

      # def event_user_params
      #   params.require(:event).permit(:id, :user_id)
      # end

    end
  end
end
