#問３　商品レビュー
class review
def register_review   # レビューを登録するメソッドを完成させてください。引数も利用しましょう。
    puts = "商品名を入力してください"
    post[:name] = gets.chomp
    puts "感想を入力してください"
    post[:review] = gets.chomp
end

def show_reviews
    name = ["商品名"]

    name.each do |name|
    puts name
    puts "商品名：【ユーザーが入力した商品名をここに表示】"
    puts "感想：【ユーザーが入力した感想をここに表示】"
end

reviews = ["感想"]
while true do
    puts "番号を入力してください"
    puts "[1] レビューを登録する"
    puts "[2] レビューの一覧を見る"
    puts "[3] アプリを終了する。"
    input = gets.to_i
    case input
    when 1
        # レビューを登録するメソッドを呼び出してください
        post[:review] = gets.chomp
    when 2
        # レビュー一覧を表示するメソッドを呼び出してください

    when 3
        # アプリケーションを終了する処理を書いてください
    end
end


#問２アホになるやつ
num = 1
while num <= 50
    puts num
    if num * 3 == 0
        put Aho
end



#問１数当てゲーム
num = 0
while num <= 9
    puts num
end
userInput = ユーザーが入力する値r = puts Random.rand(0..9)
if userInput = r then
    put "正解"
elsif userInput > r then
    put "大きい"
else
    puts "小さい"
end