class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @articles_grouped_by_category = Article.includes(:user).all.group_by(&:category)
  end

  def show
    if user_signed_in?
      @article = Article.includes(:user).find(params[:id])
    else
      redirect_to new_user_registration_url
    end
  end

  def edit
    @article = Article.includes(:user).find(params[:id])
    authorize @article
  end

  def update
    @article = Article.find(params[:id])
    authorize @article
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def create
    @article = Article.new
    @article.user_id = current_user.id
    authorize @article
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def new
    @article = Article.new
    authorize @article
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
