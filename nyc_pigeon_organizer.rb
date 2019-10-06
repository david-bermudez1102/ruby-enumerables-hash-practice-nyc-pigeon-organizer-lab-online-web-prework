def nyc_pigeon_organizer(data)
  attributes = Hash.new { |h, k| h[k] = [] }
  result = Hash.new { |h, k| h[k] = [] }
  final = {}

    data.each do |item,sub_item|

      sub_item.each do |key2,value2|

        value2.each do |item2|
          result[item2] << key2.to_s
          final[item2] = {:item = ""}
        end
      end
    end

    data.each do |item,sub_item|

      sub_item.each do |key2,value2|
          attributes[item] << key2.to_s
      end
    end

    result.each do |item,sub_item|
      final[item] = {}
    end


final
end
nyc_pigeon_organizer(pigeon_data)
