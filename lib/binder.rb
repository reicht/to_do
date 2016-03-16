class Binder

  attr_accessor :binder

  def initialize
    @binder = []
  end

  def bind(list_1 = "", list_2 = "", list_3 = "", list_4 = "", list_5 = "", list_6 = "", list_7 = "", list_8 = "", list_9 = "")
    @binder[0] = list_1
    @binder[1] = list_2
    @binder[2] = list_3
    @binder[3] = list_4
    @binder[4] = list_5
    @binder[5] = list_6
    @binder[6] = list_7
    @binder[7] = list_8
    @binder[8] = list_9
  end
end
