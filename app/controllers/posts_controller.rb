class PostsController < ApplicationController
  def new
  end

  def create
    @admin = find_admin
    @post = @admin.posts.new(post_params)
      if @post.save
        redirect_to portfolio_path
      else
        @errors = @post.errors.full_messages
        render :new
      end
  end

  private

    def post_params
      params.require(:post).permit(:title, :content, :category, :date)
    end

end