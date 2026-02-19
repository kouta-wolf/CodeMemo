# 既存のデータを一度消去（何度も実行できるようにするため）
Article.destroy_all

# ダミーデータを複数作成
Article.create!([
  { title: "Rubyの基礎", content: "変数やメソッドの書き方を学んだ。" },
  { title: "Railsのルーティング", content: "get 'url', to: 'controller#action' の書き方。" },
  { title: "GitHubの使い方", content: "add, commit, pushの流れを覚えた。" }
])

puts "ダミーデータの作成が完了しました！"
