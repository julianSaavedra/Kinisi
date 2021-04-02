test - no sense when encapsualted
testGridCannotHaveNegativeSize

	self
		assert: [ GridRenderer with: Color red and:  -10 ]
		failsWith: 'Grid size cannot be negative'