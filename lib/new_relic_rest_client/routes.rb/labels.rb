module NRRC
	module Routes
		class Labels
			extend Helpers
			URL_BASE = "#{Base}/labels"

			class << self
				def list
					make_request(get_action[:url] = "#{URL_BASE}.json",)
				end

				def create id, data
					make_request(
						put_action.update {
							payload: data
							url: "#{url id}.json"
						}
					)
				end

				def delete id
					make_request(delete_action[:url] = "#{url id}.json")
				end

			end
		end
	end
end
