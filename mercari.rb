# puts "-----------------------------"
# puts "商品の厚さは3cm以下になりますか？ 厚さを入力してください。"
# thickness = gets.chomp.to_f
# puts "商品の厚さは#{thickness}cmです"
# puts "-----------------------------"
# puts "重さは何kgですか？ 重さを入力してください。"
# weight = gets.chomp.to_f
# puts "商品の重さは#{weight}kgです"
# puts "この商品は、"
# if thickness < 3
#   if weight < 1
#     puts "ゆうパック：175円"
#   elsif (1 <= weight) && (weight < 4)
#     puts "レターパックライト：370円"
#   else
#     puts "普通郵便"
#   end
# elsif thickness < 7
#   if weight < 2
#     puts "ゆうパケットプラス：375円+65円（箱代）"
#   else
#     puts "レターパックプラス：520円"
#   end
# elsif weight < 4
#   puts "レターパックプラス：520円"
# else
#   puts "普通郵便"
# end
# puts "で送付してください。"


puts "商品の厚さと重さについて質問します。"
puts "『はい』か『いいえ』で答えてください。"
puts "『はい』→ 1、『いいえ』→ 0 を押してください。"
puts "-----------------------------"
puts "商品の厚さは3cm以下になりますか？"
thickness3 = gets.chomp.to_i
unless (thickness3 == 1) || (thickness3 == 0)
  puts "正しく入力してください。"
  return
end
if thickness3 == 1
  puts "商品の重さは1kg以下になりますか？"
  weight1 = gets.chomp.to_i
  unless (weight1 == 1) || (weight1 == 0)
    puts "正しく入力してください。"
  return
  end
  if weight1 == 1
    print "ゆうパック：175円"
  else
    puts "商品の重さは4kg以下になりますか？"
    weight4 = gets.chomp.to_i
    unless (weight4 == 1) || (weight4 == 0)
      puts "正しく入力してください。"
      return
    end
    if weight4 == 1
      print "レターパックライト：370円"
    else
      print "普通郵便"
    end
  end
else
  puts "商品の厚さは7cm以下になりますか？"
  thickness7 = gets.chomp.to_i
  unless (thickness7 == 1) || (thickness7 == 0)
    puts "正しく入力してください。"
    return
  end
  if thickness7 == 1
    puts "商品の重さは2kg以下になりますか？"
    weight2 = gets.chomp.to_i
    unless (weight2 == 1) || (weight2 == 0)
      puts "正しく入力してください。"
      return
    end
    if weight2 == 1
      print "ゆうパケットプラス：375円+65円（箱代）"
    else
      print "レターパックプラス：520円"
    end
  else
    puts "商品の重さは4kg以下になりますか？"
    weight4 = gets.chomp.to_i
    unless (weight4 == 1) || (weight4 == 0)
      puts "正しく入力してください。"
      return
    end
    if weight4 == 1
      print "レターパックプラス：520円"
    else
      print "普通郵便"
    end
  end
end
puts "で送付してください。"