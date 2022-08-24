require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.chomp

if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp

  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dをおします"
  memos = readlines
  memos2 = []
  memos.each do |memo|
    memos2.push(memo.chomp)
  end

  csv = CSV.open("#{file_name}.csv", "w")
  csv.add_row(memos2)
  csv.close

elsif memo_type == "2"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp

  puts "編集内容を記入してください"
  puts "完了したらCtrl + Dをおします"
  memos = readlines
  memos2 = []
  memos.each do |memo|
    memos2.push(memo.chomp)
  end

  csv = CSV.open("#{file_name}.csv", "a")
    csv.add_row(memos2)
  csv.close
end