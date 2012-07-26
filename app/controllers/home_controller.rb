class HomeController < ApplicationController

  def index
  end

	def test
		render :json => categories
	end
end
