# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_post, only: %i[show]

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def show; end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:success] = "created"
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
end

private

# Only allow a list of trusted parameters through.
def post_params
  params.require(:post).permit(:title, :content , :status, images: [])
end

private

# Use callbacks to share common setup or constraints between actions.
def set_post
  @post = Post.find(params[:id])
end
