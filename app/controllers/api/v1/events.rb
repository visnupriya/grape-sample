
module API
	module V1
		class Events < Grape::API
			
			#### PATH Versioning
			version 'v1'

			### HEARDER Versioning
			# version 'v1', using: :header, vendor: 'spritexchange', strict: true
			# curl -H Accept:application/vnd.spritexchange-v1+json http://localhost:3000/api/hello

			### ACCET VERSION HEADER
			# version 'v2', using: :accept_version_header, strict: true
			# curl -H "Accept-Version:v1" http://localhost:3000/api/hello

			### PARAMETER Versioning
			# default name for the query parameter is 'apiver'
			# version 'v1', using: :param, parameter: "apiversion"

			format :json

			desc "Simple Hello World"
			resource :hello do
				get do
					## Error Handling
					error!('Unauthorized', 401) unless headers['Password'] == 'spriteXchange'
					{ hello: "Spritle" }
				end
			end

			### Using namspace or resource to define routes
			namespace :events do
				desc "Return list of events"
				get :list do 
					Event.all
				end

				### requirements => define requirements for your named route parameters using regular expressions 

				get ':id', requirements: { id: /[0-9]*/ } do
				# get ':id' do
					# Event.find(params[:id])
					{get_params: params[:id]}
				end


			end
		end
	end
end
