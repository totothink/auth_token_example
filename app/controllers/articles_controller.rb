class ArticlesController < ApplicationController
  before_action :authenticate

  def index
    @articles = Article.all
    render json: @articles
  end
end
