# class BEService
#   def self.conn
#     Faraday.new('http://localhost:3000/')
#   end

#   def self.login_user(user_input)
#     response = conn.post("/api/v1/customers") do |req|
#       req.headers[:CONTENT_TYPE] = "application/json"
#       req.body = JSON.generate(user: user_input)
#     end
#     a = JSON.parse(response.body, symbolize_names: true)
#   end

#   def self.teas
#     response = conn.get("/api/v1/teas") 
#     JSON.parse(response.body, symbolize_names: true)
#   end

#   def self.find_tea(tea_id)
#     response = conn.get("/api/v1/teas/#{tea_id}") 
#     JSON.parse(response.body, symbolize_names: true)

#   end
# end