class Binder

  attr_accessor :binder

  def initialize
    @binder = []
  end

  def bind(list)
    @binder.push(list)
  end
end
