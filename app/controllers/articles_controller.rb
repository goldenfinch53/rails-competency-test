class ArticlesController < ApplicationController
  # before_action :authenticate_user!, except: [:index]

  def index
    @articles_grouped_by_category = Article.includes(:user).all.group_by(&:category)
  end

  def show
    @article = Article.includes(:user).find(params[:id])
  end

end
