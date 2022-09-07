class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      @article  = current_user.articles.build
      @feed_items = current_user.feed
    end
  end
end
