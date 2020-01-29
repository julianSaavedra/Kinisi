validation
assertValid: amountOfPackages

	amountOfPackages negative ifTrue: [ SimulationError signal: 'Package threshold cannot be negative' ]