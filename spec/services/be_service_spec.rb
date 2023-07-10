# require 'rails_helper'

# RSpec.describe BEService do

#   before :each do
#     @user_input = {
#       data: {
#         id: '1',
#         first_name: "Guest",
#         last_name: "LastesterName",
#         email: "customer@cus.com",
#         address: "123 xmas lane 22822"
#       }
#     }
#   end

#   describe 'class methods' do
#     describe '#login_user' do
#       it 'returns user JSON' do
#         # VCR.use_cassette('login_user') do
#           user_output = BEService.login_user(@user_input)
  
#           expect(user_output[:data]).to be_a Hash
#           expect(user_output[:data][:id]).to be_a String
#           expect(user_output[:data][:attributes][:first_name]).to be_a String
#           # expect(user_output[:data][:attributes][:token]).to be_a String
#           # expect(user_output[:data][:attributes][:athlete_id]).to be_a String
#         # end
#       end
#     end
#   end

 
# end 
