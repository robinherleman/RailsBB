class ForumController < ApplicationController
  def show
    @forum = Forum.find(params[:id])
  end

  def create
    f = Forum.new
    f.titre = forum_params[:titre]
    f.save
    redirect_to index_index_path
  end

  private
  def forum_params
    params.require(:forum).permit(:titre)
  end


end
