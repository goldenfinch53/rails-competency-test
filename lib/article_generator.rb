class ArticleGenerator
  def self.generate article_count, category, authors
    article_count.times do 
      Article.create user_id: authors.sample.id, category: category, title: BetterLorem.w(Random.rand(5), true, true), content:  BetterLorem.w(Random.rand(10), false, true)
    end
  end
end