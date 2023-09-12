class HomesController < ApplicationController
  def index
    @latest_articles = Article.home_latest_articles
  end
end
