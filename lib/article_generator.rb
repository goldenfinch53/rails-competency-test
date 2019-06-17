class ArticleGenerator
  def self.generate article_count, category, authors
    article_count.times do 
      Article.create user_id: authors.sample.id, category: category, title: BetterLorem.w(Random.rand(5), true, true), content:  BetterLorem.p(Random.rand(25), true, true)
    end
  end
end