class PostsController < ApplicationController

def new
	@post = Post.new
end

def show
	@post = Post.find(params[:id])
end

def index
	@posts = Post.all
end

def update

end

def create
	#@post = Post.new(params[:post]) #<- older version
	@post = Post.new(params.require(:post).permit(:title, :content)) 
	#@post = Post.new(params.require(:post).permit(:title,:content))
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

end





end
