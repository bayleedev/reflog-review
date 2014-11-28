class Reflog

  def initialize
    @pointer = 0
  end

  def next
    @pointer += 1
  end

  def prev
    @pointer -= 1 if @pointer > 0
  end

  def show
    `git show HEAD@{#{@pointer}}`
  end

  def pick
    `git reset --hard HEAD@{#{@pointer}}`
  end

end
