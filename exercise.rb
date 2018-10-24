require 'httparty'

#part 1
toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)
toronto_wards_json["objects"].each do |object|
  puts object["name"]
end

#part 2
candidates_response = HTTParty.get('https://represent.opennorth.ca/candidates/')
candidates_response_json = JSON.parse(candidates_response.body)

p candidates_response_json.class #this is a ruby hash
