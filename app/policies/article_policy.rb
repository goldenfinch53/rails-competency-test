class ArticlePolicy
  attr_reader :user, :article

  def initialize(user, article)
    @user = user
    @article = article
  end

  def show?
    user.exists?
  end

  def edit? 
    user.editor? && article.user == user
  end

  def update? 
    user.editor? && article.user == user
  end

  def destroy? 
    user.editor? && article.user == user
  end

  def create?
    user.editor?
  end
  
  def new? 
    user.editor?
  end
end