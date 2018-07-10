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
        event = Event.find(event_user_params["id"])
        user = User.find(event_user_params["user_id"])
        event.users << user
        render json: event
      end

      private

      def event_params
        params.require(:event).permit(:id, :name, :venue, :date)
      end

      def event_user_params
        params.require(:event).permit(:id, :user_id)
      end

    end
  end
end
