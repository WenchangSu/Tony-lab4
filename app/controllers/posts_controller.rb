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

def delete
	
end

def edit
	
end

def update

end

def destroy

end





end
