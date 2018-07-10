module Api
    module V1
      class CommentsController < ApplicationController
  
        def index
          render json: Comment.includes(:events), include: ["events"]
        end
  
        def create
          comment = Comment.create(comment_params)
          render json: comment
        end
  
        private
  
        def comment_params
          params.require(:comment).permit(:id, :content, :event_id, :user_id)
        end
  
      end
    end
  end
  