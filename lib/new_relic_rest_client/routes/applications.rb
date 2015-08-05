module NRRC
	module Routes
		module Applications
			extend Helpers
			extend Common
			extend Common::Metrics
			extend Common::Unsafe
			@url_base = "#{Base}/applications"
			class << self
				

				def event_list id
					get_action(url: "#{url id}/events.json")
				end

				def event_show id, event_id
					get_action(url: "#{url id}/events/#{event_id}.json")
				end

				def event_close id, event_id
					put_action(url: "#{url id}/events/#{event_id}/close.json")
				end

				def create_event id, data				
					create_action(
						payload: data,
						url: "#{url id}/events.json"
					)
				end

				def downtime_list id
					get_action(url: "#{url id}/target_downtime_events.json")
				end

				def downtime_show id,event_id
					get_action(url: "#{url id}/target_downtime_events/#{event_id}.json")
				end

			end
		end
	end
end