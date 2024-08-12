class HomeController < ApplicationController
  before_action :set_article, only: %i[ show ]
  def index
    @articles = Article.all
  end

  # GET /articles/1 or /articles/1.json
  def show
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
end
