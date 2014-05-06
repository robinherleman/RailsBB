class MessageController < ApplicationController
  before_filter :authenticate_user, :only => [:new, :destroy]

  def new
  end

  def show
    
  end

  def create
    @topic = Topic.find(params[:topic_id])
    m = Message.new(params.require(:message).permit(:contenu))
    m.topic = @topic
    m.user = current_user
    m.save
    redirect_to topic_path(@topic)
  end

  def destroy
    m = Message.find(params[:id])
    t = m.topic
    m.destroy
    redirect_to topic_path(t)
  end
end
