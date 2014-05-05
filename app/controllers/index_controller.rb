class IndexController < ApplicationController
  def index
    @f = Forum.all
  end
end
