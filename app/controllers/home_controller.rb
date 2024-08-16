class HomeController < ApplicationController
  before_action :set_tags, only: %i[ index index_by_tag show ]
  def index
    @articles = Article.all
  end

  def index_by_tag
    @tag = Tag.find_by(name: params[:tag_name])
    if @tag
      @articles = @tag.articles
    else
      @articles = []
    end

  end
  # GET /articles/1 or /articles/1.json
  def show
    @article = Article.find(params[:id])
  end

  private

  def set_tags
    @tags = Tag.all
  end
end
