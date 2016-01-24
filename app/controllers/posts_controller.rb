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

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post
      @post.update_attributes(post_params)
      redirect_to portfolio_path
    else
      @errors = @post.errors.full_messages
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to portfolio_path
  end

  private

    def post_params
      params.require(:post).permit(:title, :content, :category, :date)
    end

end