assertions - private
assertValidDomainOf: aMeasureVector

	(self unit sameDomainAs: aMeasureVector unit)
		ifFalse: [ SimulationError signal: 'Operands must be from the same domain.' ]