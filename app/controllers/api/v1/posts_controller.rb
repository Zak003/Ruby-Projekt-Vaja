class Api::V1::PostsController < Api::ApplicationController
    def index
        @posts = Post.posted
        render json: @posts.to_json, status: :ok
    end
end