class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    # item = Item.find(params[:id])
    # @nickname = user.nickname
    # @tweets = user.tweetst.comments.includes(:user)
  end

end
