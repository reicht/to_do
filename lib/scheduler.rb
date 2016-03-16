class Scheduler
  def make_list
    Lists.new(Utils.get_response("What should it be named?"))
  end
  def add_item(list)
    looper = "Y"
    while looper.upcase == "Y"
      note = Utils.get_response("Enter an item for the list.")
      list.enter_item(note)
      looper = Utils.get_response("Would you like to add another item?")
    end
  end
end
