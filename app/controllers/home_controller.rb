class HomeController < ApplicationController
  def top
      if @current_user
          redirect_to("/posts/index")
      end
  end

  def about
  end
end
