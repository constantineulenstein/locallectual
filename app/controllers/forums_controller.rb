class ForumsController < ApplicationController

  def index
    @forums = policy_scope(Forum).all
  end

  def show
    @forum = Forum.find(params[:id])
  end

  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(forum_params)
    @forum.save
    redirect_to forum_path(@forum)
  end

  def edit
    @forum = Forum.find(params[:id])
  end

  def update
    @forum = Forum.find(params[:id])
    @forum.update(forum_params)
    @forum.save
    redirect_to forum_path(@forum)
  end

  def destroy
    @forum = Forum.find(params[:id])
    @forum.destroy
    redirect_to forums_path
  end

  private

  def forum_params
    params.require(:forum).permit(:title, :content)
  end
end
