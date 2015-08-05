module NRRC
	module Routes
		class Labels
			extend Helpers
			@url_base = "#{Base}/labels"

			class << self
				def list, params
					get_action(url: "#{@url_base}.json",params)
				end

				def create id, data
					put_action(
						payload: data,
						url: "#{url id}.json"
					)
				end

				def delete id
					delete_action(url: "#{url id}.json")
				end

			end
		end
	end
end
