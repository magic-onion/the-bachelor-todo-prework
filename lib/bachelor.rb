def get_first_name_of_season_winner(data, season)
  data[season].each do |people|
    people.each do |key, value|
      if value == "Winner"
        return people["name"].split(" ")[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |people|
    people.each do |key, value|
    if value == occupation
      return people["name"]
    end
  end
  end
  end
end

def count_contestants_by_hometown(data, hometown)
  people_num = 0
  data.each do |season, array|
    array.each do |people|
      if people["hometown"] == hometown
        people_num += 1 
      end
    end
  end
  people_num
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |people|
      people.each do |key, value|
        if value == hometown
          return people["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_sum = 0
  age_divisor = 0
  data[season].each do |hash|
    hash.each do |key, value|
      if key =="age"
        age_divisor += 1
        age_sum = age_sum + value.to_f
      end
    end
  end
    age_avg = age_sum/age_divisor
return age_avg.round
end
