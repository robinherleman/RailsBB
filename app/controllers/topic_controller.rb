class TopicController < ApplicationController
  def show
    @topic = Topic.find(params[:id])
  end

  def new
  end

  def create
    @forum = Forum.find(params[:forum_id])
    t = Topic.new
    t.titre = topic_params[:titre]
    t.forum = @forum
    t.save
    m = Message.new
    m.contenu = topic_params[:contenu]
    m.topic = t
    m.save
    redirect_to topic_path(t)
  end

  private
  def topic_params
    params.require(:topic).permit([:titre, :contenu])
  end
end
