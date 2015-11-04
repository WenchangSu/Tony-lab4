class PostsController < ApplicationController

def creat
	
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
