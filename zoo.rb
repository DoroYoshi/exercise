# Q1
# names = ["田中", "佐藤", "佐々木", "高橋"]
# names << "斎藤"
# puts names

# Q2
# array1 = %w(dog cat fish)
# array2 = %w(bird bat tiger)
# array = array1 + array2
# p array

# Q3
# numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]
# count = 0
# numbers.each do |number|
#   count = count + 1 if number === 3
# end
# puts count

# Q4
# sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]
# a = []
# sports.each do |sport|
#   a << sport unless sport == nil
# end
# p a

# Q5
# puts array1 = [].empty?
# puts array2 = [1, 5, 8, 10].empty?

# Q6
# numbers1 = [1, 2, 3, 4, 5]
# numbers1.map! do |number|
#   number * 10
# end
# p numbers1

# Q7
# p array = ["1", "2", "3", "4", "5"].map! { |i| i.to_i }
# p array.map! { |i| i.to_i }
# p array

# Q8
# programming_languages = %w(ruby php python javascript)
# # コードを追加
# upper_case_programming_languages = programming_languages.map {|language| language.upcase }
# # 以下は変更しないで下さい
# p programming_languages
# p upper_case_programming_languages

# Q9
# names = ["田中", "佐藤", "佐々木", "高橋"]
# names.each.with_index(1) do |name,i|
#   puts "会員No.#{i} #{name}さん"
# end

# Q10??????????????????????????????????????????????
# foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)
# foods.each do |food|
#   unless food == /う.*に/
#     puts "まぁまぁ好きです"
#   else
#     puts "好物です"
#   end
# end

# Q11
# sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
# all_sports = sports.flatten.uniq
# all_sports.each.with_index(1) { |sport,i| puts "No#{i} #{sport}" }

# Q12
# data = { user: { name: "satou", age: 33 } }
# puts data[:user][:name]

# Q13
# user_data = { name: "神里", age: 31, address: "埼玉" }
# update_data = { age: 32, address: "沖縄" }
# p user_data.merge(update_data)

# Q14
# data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }
# array =[]
# data.each do |key,value|
#   array << key
# end
# p array

# Q15
# data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
# data2 = { name: "yamada", hobby: "baseball", role: "normal" }
# data = data2
# if data.key?(:age)
#   puts "OK"
# else
#   puts "NG"
# end

# Q16
# users = [
#   { name: "satou", age: 22 },
#   { name: "yamada", age: 12 },
#   { name: "takahashi", age: 32 },
#   { name: "nakamura", age: 41 }
# ]
# users.each {|user| puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。"}

# Q17
# class User

# # コードを追加 *params
#   def initialize(name: ,age: ,gender: ,admin:)
#     @name = name
#     @age = age
#     @gender = gender
#     if admin == true
#       @admin = "有り"
#     else
#       @admin = "無し"
#     end
#   end

#   def info
#     puts "名前：#{@name}"
#     puts "年齢：#{@age}"
#     puts "性別：#{@gender}"
#     puts "管理者権限：#{@admin}"
#   end
# end

# user1 = User.new(name: "神里", age: 32, gender: "男", admin: true)
# user2 = User.new(name: "あじー", age: 32, gender: "男", admin: false)

# user1.info
# puts "-------------"
# user2.info

# Q18
# class User
#   def initialize(name: ,age:)
#     @name = name
#     @age = age
#   end

#   def introduce
#     if @age < 20
#       print "はいさいまいど〜，#{@name}です！！！"
#     else
#       print "こんにちは，#{@name}と申します。宜しくお願いいたします。"
#     end
#   end
# end
# user1 = User.new(name: "あじー", age: 32)
# user2 = User.new(name: "ゆたぼん", age: 10)

# puts user1.introduce
# puts user2.introduce

# Q19
# class Item
#   def initialize(name)
#     @name = name
#   end

#   def name
#     @name.values
#   end
# end

# book = Item.new(name: "ゼロ秒思考")
# puts book.name

# Q20
class User
  def initialize(name: ,age:)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end
end

class Zoo
  def initialize(name: ,entry_fee:)
    @name = name
    @entry_fee = entry_fee
  end

  def info_entry_fee(user)
    if user.age < 6
      fee = @entry_fee[:infant]
    elsif user.age < 13
      fee = @entry_fee[:children]
    elsif user.age < 65
      fee = @entry_fee[:adult]
    elsif user.age < 121
      fee = @entry_fee[:senior]
    else
    end
    puts "#{user.name}さんの入場料金は #{fee} 円です。"
  end
end

zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

users = [
  User.new(name: "たま", age: 3),
  User.new(name: "ゆたぼん", age: 10),
  User.new(name: "あじー", age: 32),
  User.new(name: "ぎん", age: 108)
]

users.each do |user|
  zoo.info_entry_fee(user)
end