class Scheduler

  def make_list
    Lists.new(Utils.get_response("What should it be named?"))
  end

  def add_item(list)
    looper = "Y"
    items = 0
    while looper.upcase == "Y"
      entries = Utils.get_response("Add how many items?(1 - 9)").to_i
      entries.times do
        note = Utils.get_response("Enter an item for the list:")
        list.enter_item(note)
        items +=1
      end
      looper = Utils.get_response("More entries? (Y)es, Else continues")
    end
  end

  def view_edit(list)
    Screener.new.display_list(list)
    Utils.place_space
    Utils.centered_print(" # - Toggle Completion for Item",(`tput cols`.to_i - 45))
    Utils.place_space
    edit = Utils.get_response("Which item:").to_i
    list.toggle_completion(edit)
    view_edit(list)
  end
end
