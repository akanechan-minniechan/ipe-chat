#問３ 商品レビュー

def register_student(students)
    puts "商品名を入力してください"
    input_name = gets.chomp
    puts "感想を入力してください"
    input_japanese = gets.chomp

    student = { name: input_name, japanese: input_japanese}
    students << student
    puts "登録しました！"
end

def show_students(students)
    students.each_with_index do |student, index|
        puts "----------------------------"
        puts "[#{ index + 1 }]商品名： #{ student[:name] }"
        puts "[#{ index + 1 }]感想： #{ student[:japanese] }"
    end 
    input = gets.to_s

end


students = []
while true do
    puts "番号を入力してください"
    puts "[1] レビューを登録する"
    puts "[2] レビューの一覧を見る"
    puts "[3] アプリを終了する。"
    input = gets.to_i

    case input
    when 1
        # 生徒を登録する処理
        register_student(students)
    when 2
        # 生徒の一覧を表示する処理
        show_students(students)
    when 3
        exit
    end
end

#問2 アホになるやつ

(1..50).each do |num|
    if num % 3 == 0
      puts "aho"
    elsif k.to_s.include?("3")
      puts "aho"
    else
      puts "#{num}"
    end
  end

  #1 数当てゲーム

  result = rand(0..9)
input = 0

loop do
    puts "入力をお願いします。"

    input = gets.to_i

    if input > result
        puts "もっと小さいです。"
    elsif input < result
        puts "もっと大きいです。"
    else
        break
    end
end

puts "正解です。"
