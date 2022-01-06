asserting
assertValid: prefix

	prefix ifEmpty: [ SimulationError signal: 'Prefix cannot be empty.' ]