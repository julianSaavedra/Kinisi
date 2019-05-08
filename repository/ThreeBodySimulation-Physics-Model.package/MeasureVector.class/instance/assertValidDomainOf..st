assertions - private
assertValidDomainOf: aMeasureVector

	(self unit sameDomainAs: aMeasureVector unit)
		ifFalse: [ PhysicsModelError signal: 'Operands must be from the same domain.' ]