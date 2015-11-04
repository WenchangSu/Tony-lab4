class PostsController < ApplicationController

def update
 @post = Post.find(params[:id])
 if @post.update_attributes(params[:post])
 # if @post.update(params[:post]) this line cause error by using post.update ,which is a private method 
    redirect_to post_url(@post)
  else
    render 'edit'
  end
end

def new
	@post = Post.new
end

def show
	@post = Post.find(params[:id])
end

def index
	@posts = Post.all
end

def create
	@post = Post.new(params[:post]) #<- older version
	#@post = Post.new(params.require(:post).permit(:title,:content)) this new version don't work on my VM
	if @post.save
	redirect_to posts_path, :notice => "Successfully created!"
	else
	render "new"
    end
end

def edit
	 @post = Post.find(params[:id])
end

def destroy
	@post = Post.find(params[:id])
	if @post.destroy
		flash[:alert] = "Good was successfully deleted"
	end

	redirect_to posts_path
end


end
