require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.to_i

if memo_type == 1
  puts "新規メモの作成"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.to_s 
  puts "メモの内容を入力してください"
  memo = gets.chomp.to_s

  CSV.open("#{file_name}.csv",'w') do |memo_list|
    memo_list << [memo]
  end

elsif memo_type == 2
  puts "既存のメモを編集します"
  puts "拡張子を除いた編集したいファイル名を入力してください"
  file_name = gets.to_s
  puts "メモの内容を編集してください"
  memo = gets.chomp.to_s

  CSV.open("#{file_name}.csv",'a') do |memo_list|
    memo_list << [memo]
  end
end