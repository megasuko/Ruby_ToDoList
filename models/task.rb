# task.rb
# タスクのクラス.

class Task
  attr_reader :id, :description

  # コンストラクタ.
  def initialize(id, description)
    @id = id
    @description = description
  end
end