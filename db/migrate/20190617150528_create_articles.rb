class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text   :content
      #right now  using a string a for category, it may make sense to have a category model or use an enumerable in the future
      t.string :category
      t.integer :user_id
      t.timestamps
    end

    add_index :articles, :user_id
  end
end
