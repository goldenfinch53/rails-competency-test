class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @articles_grouped_by_category = Article.all.group_by(&:category)
  end

end
