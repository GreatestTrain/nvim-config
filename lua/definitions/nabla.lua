local Action = require 'utils.action'

return {
	toggle = Action:new(function ()
		require('nabla').popup()
	end, nil, "Toggles latex visualization.")
}
