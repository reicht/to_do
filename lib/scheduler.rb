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
    Utils.centered_print(" # - Toggle Completion     E - Edit Mode(Inactive)",(`tput cols`.to_i - 35))
    puts
    Utils.place_space
    count = list.completion.count
    edit = Utils.get_response("Which item:").to_i
    if (1..count).to_a.any?{|x| edit == x}
      list.toggle_completion(edit)
    else
      Utils.get_response("Please select an active item")
    end
    view_edit(list)
  end
end
