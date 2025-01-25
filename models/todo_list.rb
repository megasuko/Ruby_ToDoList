# todo_list.rb
# タスクの管理を行うクラス.

require_relative 'task'

class TodoList
  # コンストラクタ.
  def initialize
    @tasks = []
    @next_id = 1
  end

  # タスク追加.
  # @param string description
  def add_task(description)
    add_task = Task.new(@next_id, description)
    @tasks << add_task
    @next_id += 1
    puts "タスクを追加しました: #{add_task.description}"
  end

  # タスク表示.
  def display_tasks
    if @tasks.empty?
      puts "タスクはありません"
    else
      puts "現在のタスク:"
      @tasks.each { |task| puts "#{task.id}: #{task.description}" }
    end
  end

  # タスク削除.
  # @param int id
  def delete_task(id)
    delete_task = @tasks.find { |task| task.id == id }
    if delete_task
      @tasks.delete(delete_task)
      puts "タスクを削除しました: #{delete_task.description}"
    else
      puts "指定IDのタスクが見つかりませんでした"
    end
  end
end