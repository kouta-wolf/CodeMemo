# 1. 既存データを消去
Article.destroy_all
Category.destroy_all

# 2. カテゴリを作成し、変数に入れる
ruby = Category.create!(name: 'Ruby')
rails = Category.create!(name: 'Rails')
git = Category.create!(name: 'Git')

# 3. 記事を作成する際、どのカテゴリに属するかを指定
Article.create!([
  { title: "Rubyの基礎", content: "変数やメソッドの書き方を学んだ。", category: ruby },
  { title: "Railsのルーティング", content: "get 'url', to: 'controller#action' の書き方。", category: rails },
  { title: "GitHubの使い方", content: "add, commit, pushの流れを覚えた。", category: git }
])

puts "カテゴリと記事のダミーデータ作成が完了しました！"
