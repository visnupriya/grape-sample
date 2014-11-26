module API
	module V1
		class Base < Grape::API

			### Handling Error Exception
			# before do 
			# 	error!('401 Unauthorized', 401) unless headers['Password'] == 'spriteXchange'
			# end

			# route :any, '*path' do
  	# 			error! "This should have http status code 400"
			# end
			mount API::V1::Events


			# Adds the swagger documentation to your
    		# api. You only need this once, not in
    		# every sub module
		    add_swagger_documentation(
		    	base_path: "/api",
		    	hide_documentation_path: true
		    )
		end
	end
end
