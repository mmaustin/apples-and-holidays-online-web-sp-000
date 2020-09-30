require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, data|
   data.each do |holiday, items|
     if holiday == :christmas || holiday == :new_years
       items << supply
     end
   end
 end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, data|
   data.each do |holiday, items|
     if holiday == :memorial_day
       items << supply
     end
   end
 end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {:thanksgiving => ["Turkey"]}.merge({holiday_name => supply_array})
  holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    holiday_hash.each do |season, holiday|
      puts "#{season.capitalize}:"
      holiday.each do |holiday, supplies|
        puts "  #{holiday.to_s.split("_").collect{|i| i.capitalize}.join(" ")}: #{supplies.join(", ")}"
      end
    end
  end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
