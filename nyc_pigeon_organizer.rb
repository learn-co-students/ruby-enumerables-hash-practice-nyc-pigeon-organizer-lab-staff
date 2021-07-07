def nyc_pigeon_organizer(data)
  new_dict = {}
  data.each do |key,value|
    value.each do |key_1,value_1|
      value_1.each do |name|
        if !new_dict.has_key?(name)
          new_dict[name] = {}
        end
        if !new_dict[name].has_key?(key)
          new_dict[name][key] = [key_1.to_s]
        else
          new_dict[name][key].push(key_1.to_s)
        end
      end
    end
  end
  puts new_dict
  new_dict
end



pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}



nyc_pigeon_organizer(pigeon_data)
