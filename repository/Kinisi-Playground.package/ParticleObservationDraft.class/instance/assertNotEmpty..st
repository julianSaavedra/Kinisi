validation
assertNotEmpty: futureName

	futureName ifEmpty: [ SimulationError signal: 'Name cannot be empty.' ]