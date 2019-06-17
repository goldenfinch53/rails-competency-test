# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'user_generator'
require 'article_generator'

UserGenerator.generate 5, 'user'
UserGenerator.generate 3, 'editor'
UserGenerator.generate 1, 'admin'

ArticleGenerator.generate 4, 'Sports', User.editor

ArticleGenerator.generate 2, 'Comedy', User.editor

ArticleGenerator.generate 3, 'World News', User.editor

ArticleGenerator.generate 5, ' Pop Culture', User.editor