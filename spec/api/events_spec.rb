require 'rails_helper'
# require 'request_helper'
require 'airborne'

describe "Events API" do
	# it "Events List API should return events list with proper data types" do
	# 	get "/api/v1/events/list"      # test for the 200 status-code
	# 	expect(response).to be_success
	# 	expect_json_types('events.*', {title: :string})
	# end

	it "Hello API should return list with proper data types" do
		get "/api/v1/hello"      # test for the 200 status-code
		expect(response).to be_success
		expect_json_types({hello: :string})
	end
end