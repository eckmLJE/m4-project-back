module Api
  module V1
    class UsersController < ApplicationController

      def index
        render json: User.includes(:events), include: ["events"]
      end

      def show_user
        render json: current_user
      end

    end
  end
end
