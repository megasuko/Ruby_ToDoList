# menu.rb
# メニュー表示のモジュール.

module Menu

  # メニューのオプション定義.
  MENU_OPTIONS = {
    add_task:      1, # タスク追加.
    display_tasks: 2, # タスク表示.
    delete_task:   3, # タスク削除.
    exit:          4  # 終了.
  }.freeze

  # メニュー表示.
  def self.display
    puts "\nToDoリスト"
    puts "---------------"
    puts "#{MENU_OPTIONS[:add_task]}. タスクを追加"
    puts "#{MENU_OPTIONS[:display_tasks]}. タスクを表示"
    puts "#{MENU_OPTIONS[:delete_task]}. タスクを削除"
    puts "#{MENU_OPTIONS[:exit]}. 終了"
    puts "---------------"
  end
end