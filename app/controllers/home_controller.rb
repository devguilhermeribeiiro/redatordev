class HomeController < ApplicationController

  def index
    @articles = Article.all
  end

  # GET /articles/1 or /articles/1.json
  def show
  end
end
