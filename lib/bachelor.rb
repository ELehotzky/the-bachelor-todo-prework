require "pry"

def get_first_name_of_season_winner(data, season)
	name = ""
	data[season].find do |contestant|
		contestant["status"] == "Winner"
		name = contestant["name"].split(" ").first
	end
	name
end

def get_contestant_name(data, occupation)
	name = ""
		data.each do |season_key, season_value|
			season_value.find do |contestant|
			  	if contestant["occupation"] == occupation
			  	name = contestant["name"]
			 end
		end
  	end
  	name
end

def count_contestants_by_hometown(data, hometown)
	count = 0
		data.each do |season_key, season_value|
			season_value.each do |contestant|
				if contestant["hometown"] == hometown
					count += 1
				end
			end
		end
	count
end

def get_occupation(data, hometown)
	job = ""
		data.each do |season_key, season_value|
			season_value.find do |contestant|
				if contestant["hometown"] == hometown
					job = contestant["occupation"]
				end
			end
		end
	job
end

def get_average_age_for_season(data, season)
	avg_age = 0
		data[season].each do |contestant|
			avg_age += contestant["age"].to_f
		end
		avg_age = (avg_age / data[season].length).round
		avg_age
end

