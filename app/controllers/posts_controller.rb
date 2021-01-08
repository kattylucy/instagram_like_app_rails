class PostsController < ApplicationController

    def index
        @posts = Post.all.limit(10).includes(:photos)
        @post = Post.new
    end

    def create
        @post = current_user.posts.build(post_paramsß)
    end

end