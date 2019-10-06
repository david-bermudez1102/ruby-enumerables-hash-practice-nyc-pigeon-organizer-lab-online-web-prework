def nyc_pigeon_organizer(data)
  attributes = Hash.new { |h, k| h[k] = [] } #hash with the atributes color, gender, lives
  result = Hash.new { |h, k| h[k] = [] } #hash with each person with no organized attributes

  final = {} #Our final hash

    data.each do |item,sub_item|

      sub_item.each do |key2,value2|

        value2.each do |item2|
          result[item2] << key2.to_s
        end
      end
    end

    data.each do |item,sub_item|

      sub_item.each do |key2,value2|
          attributes[item] << key2.to_s
      end
    end

    result.each do |item,sub_item|
      attributes.each do |attribute,value|
        final[item] = {}
      end
    end

    attributes.each do |attribute,value|
      result.each do |item,sub_item|
        sub_item.each_with_object([]) do |attribute_value, array|
          if(value.include?(attribute_value))
           array << attribute_value
          end
          final[item][attribute] = array
       end
      end
    end

final
end
