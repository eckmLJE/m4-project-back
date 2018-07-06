module Api
  module V1
    class EventsController < ApplicationController

      def index
        render json: Event.includes(:users), include: ["users"]
      end

    end
  end
end
