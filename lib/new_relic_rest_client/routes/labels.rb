module NRRC
	module Routes
		class Labels
			extend Helpers
			@url_base = "#{Base}/labels"

			class << self
				def list params={}
					get_action({url: "#{@url_base}.json"},params)
				end

				def create  data
					put_action(
						payload: data,
						url: "#{@url_base}.json"
					)
				end

				def delete id
					delete_action(url: "#{url id}.json")
				end

			end
		end
	end
end
