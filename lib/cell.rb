class Cell
  attr_accessor :neighbors
  attr_reader :state

  def initialize(*args)
    @state = rand(0..1) > 0.5 ? 0 : 1
    @neighbors = Array.new
    @new_state = nil
  end

  def next
    result = @neighbors.map(&:state).inject(:+)
    if result == 3
      @new_state = 1
    elsif result == 2 || result == 3
      @new_state = @state
    else
      @new_state = 0
    end
  end

  def change
    @state = @new_state
    @new_state = nil
  end

end
