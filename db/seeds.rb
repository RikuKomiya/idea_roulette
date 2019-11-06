# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

words = %w(アクション SF ミステリー コメディ ファンタジー アニメ 時代劇 ドラマ 戦争 ドキュメンタリー ロボット 漫画 雑誌 スポーツ 音楽 エンタメ グルメ コラム 国内 政治 経済 テクノロジー 国際 ソーシャル メディア コスメ スキンケア ヘアケア ダイエット 恋愛 ネイル 恐怖 ヒップホップ Jポップ)
words.each do |word|
  Word.create(name: word)
end