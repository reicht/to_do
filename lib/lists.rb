class Lists
  attr_accessor :name, :contents, :completion
  def initialize(name)
    @name = name
    @contents = []
    @completion = []
  end

  def enter_item
    @contents.push(Utils.get_response("Enter ToDo Item"))
  end

  def toggle_completion(item)
    @completion.push(item)
  end

end
