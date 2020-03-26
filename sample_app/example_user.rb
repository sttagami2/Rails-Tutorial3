class User
  attr_accessor :first_name, :last_name, :email
  # attr_reader = ゲッター・データを取り出すためのメソッド
  # attr_writer = セッター・データを代入するためのメソッド
  # attr_accessor = readerとwriterを合わせたメソッド


  # initialize = インスタンス生成時に自動的に呼び出されるメソッド・引数も渡せる
  def initialize(attributes = {})
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @email = attributes[:email]
  end

  def full_name
    @full_name = "#{@first_name} #{@last_name}"
  end

  # formatted_email = 呼び出した時にユーザの名前とemailが表示されるようにメソッドを定義したもの
  def formatted_email
    "#{@full_name} <#{email}>"
  end
end