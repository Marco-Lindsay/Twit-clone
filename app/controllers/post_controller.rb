class PostController < ApplicationController
  def new
  	@post = Post.new
  	

  	#render 'new'
  end

  def create
  	safe_params = params.require(:post).permit(:content)
  	@post = Post.new safe_params
    if @post.save
     redirect_to post_path
 end

  end

  def index
  	@post = Post.all.reverse

  end


  def destroy
  end
end
