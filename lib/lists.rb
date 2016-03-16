class Lists
  attr_accessor :name, :contents, :completion
  def initialize(name)
    @name = name
    @contents = []
    @completion = []
  end

  def enter_item(entry)
    @contents.push(entry)
    @completion.push(0)
  end

  def toggle_completion(slot)
    if @completion[slot-1] == 0
      @completion[slot-1] +=1
    else
      @completion[slot-1] -=1
    end
  end

end
