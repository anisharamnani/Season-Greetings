# Holiday Suppliers
# You have a bunch of decorations for various holidays organized by season.

holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}
# Questions

# How would you access the second supply for the forth_of_july? ex: holiday_supplies[:spring][:memorial_day][0]
holiday_supplies[:summer][:fourth_of_july][1]

# Add a supply to a Winter holiday.
holiday_supplies[:winter][:christmas] << "Christmas Tree"

# Add a supply to memorial day.
holiday_supplies[:spring][:memorial_day] << "flag"

# Add a new holiday to any season with supplies.
holiday_supplies[:spring][:diwali] << "candles"

# Write a method to collect all Winter supplies from all the winter holidays. ex: winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]
def winter_supplies hash 
    supply_array = []
    hash[:winter].each do |holiday, array|
		array.each do |supply|
			supply_array << supply
		end
	end
    supply_array
end

# Write a loop to list out all the supplies you have for each holiday and the season.

# Output:

# Winter:
# Christmas: Lights and Wreath
# New Years: Party Hats


# Write a method to collect all holidays with BBQ.
# holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]

def holiday_with_bbqs hash
    bbq_holiday = []
	hash.each do |season, holiday_hash|
		holiday_hash.each do |holiday, array|
			if array.include? "BBQ"
				bbq_holiday << holiday
			end
		end
	end
	bbq_holiday 
end