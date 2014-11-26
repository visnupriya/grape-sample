module API
	module V2
		module EventEntities
			class Event < Grape::Entity
				# format_with :created_at do |date|
				# 	date.strftime('%m/%d/%Y')
				# end
				expose :title,:event_date, :location
				# expose :description, documentation: { type: "text", desc: "Status update text." }
				# expose :created_at
				expose (:speakers) {|model,options| model.speakers}
				expose (:test) {|model,options| model.title}
			end
		end
	end
end
