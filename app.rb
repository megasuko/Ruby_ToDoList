# app.rb
# ToDoリストのエントリーポイント.

require './models/task'
require './models/todo_list'
require './views/menu'

todo_list = TodoList.new

# 終了までメニューをループ.
loop do
  # メニュー表示.
  Menu.display
  print "選択してください: "
  choice = gets.to_i

  # 入力に応じた処理.
  case choice
  when Menu::MENU_OPTIONS[:add_task]
    print "タスクの説明を入力してください: "
    description = gets.chomp
    todo_list.add_task(description)
  when Menu::MENU_OPTIONS[:display_tasks]
    todo_list.display_tasks
  when Menu::MENU_OPTIONS[:delete_task]
    print "削除するタスクのIDを入力してください: "
    id = gets.to_i
    todo_list.delete_task(id)
  when Menu::MENU_OPTIONS[:exit]
    puts "終了します"
    break
  else
    puts "無効な選択です"
  end
end