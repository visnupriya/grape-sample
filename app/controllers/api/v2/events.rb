module API
	module V2
		class Events < Grape::API
			version 'v2'
			# default_format :json
			format :json
			get "test" do
				{ version: "2" }
			end

			resource :events do

				get :list do 
					@events = Event.all
					# @response = []
					# @events.each do |event|
					# 	@response << {:title => event.title, :description => event.description, :location => event.location, :speakers => event.speakers}
					# end
					# @response
					#### Entities => to represent data ffrom our appliation
					present @events, with: API::V2::EventEntities::Event, type: "Test"
				end
			end
		end
	end
end