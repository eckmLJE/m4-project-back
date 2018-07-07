module Api
  module V1
    class EventsController < ApplicationController

      def index
        render json: Event.includes(:users), include: ["users"]
      end

      def create
        event = Event.create(event_params)
        render json: event
      end

      private

      def event_params
        params.require(:event).permit(:id, :name, :venue, :date)
      end

    end
  end
end
