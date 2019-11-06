require "pry"

def nyc_pigeon_organizer(data)
  final = {}

  data.each do |first_level, all_other|
    all_other.each do |category, array|
      array.each do |name|
        final[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end
  pigeon_names = final.keys
  data[:color].each do |color, name|
    name.each do |each_name|
      pigeon_names.each do |bird_name|
        if each_name == bird_name
      final[bird_name][:color] << color.to_s
        end
      end
    end
  end
  data[:gender].each do |gender, name|
    name.each do |each_name|
    pigeon_names.each do |bird_name|
      if each_name == bird_name
      final[bird_name][:gender] << gender.to_s
      end
    end
  end
 end
   data[:lives].each do |location, name|
    name.each do |each_name|
      pigeon_names.each do |bird_name|
        if each_name === bird_name
          final[bird_name][:lives] << location
        end 
      end 
    end 
  end 
  
  return final
end
