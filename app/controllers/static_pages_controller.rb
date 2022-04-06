class StaticPagesController < ApplicationController
  def home
    if logged_in?
    # ---current_user works only if user is logged in so micropost should be defined only in that case---
     @micropost = current_user.microposts.build
     # ---feed method in user model---
     @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
