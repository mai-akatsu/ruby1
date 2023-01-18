 require "csv" 
 
 puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
 
 memo_type = gets.to_i
 
 if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  
  file_name = gets.chomp
  
  puts "メモしたい内容を記述してください"
  puts "完了したらCtrl+Dを押します"
  
  content = STDIN.readlines
  memo = content
  
  CSV.open("#{file_name}.csv","w") do |csv|
  csv.puts ["#{memo}"]
  end
 
 elsif memo_type == 2
  puts "編集したいファイル名を入力してください"
  
  file_name = gets.chomp
  
  puts "追記したい内容を記述してください"
  puts "完了したらCtrl+Dを押します"
  
  content = STDIN.readlines
  memo = content
  
  CSV.open("#{file_name}.csv","a") do |csv|
  csv.puts ["#{memo}"]
  end
  
 else 
  puts "1か2の値を入力してください"
 end