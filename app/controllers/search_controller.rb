class SearchController < ApplicationController
  def index
	  @search_results = Post.where("content LIKE ? OR title LIKE ? OR name LIKE ?", "%#{params[:search_query]}%", "%#{params[:search_query]}%","%#{params[:search_query]}%").paginate(:per_page => 2, :page => params[:page] || 1)
  end
end
