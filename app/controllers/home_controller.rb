class HomeController < ApplicationController

  def index
		@posts = Post.limit(10).order("created_at DESC").all

  end

	def test
		render :json => categories
	end
end
