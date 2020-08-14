class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
  end
  
  def create
メモ投稿機能続き
    post = Post.create(content: params[:content], checked: false)
    render json:{ post: post }


master
  end

  def checked
    # binding.pry

    post = Post.find(params[:id])
    if post.checked then
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end
end
