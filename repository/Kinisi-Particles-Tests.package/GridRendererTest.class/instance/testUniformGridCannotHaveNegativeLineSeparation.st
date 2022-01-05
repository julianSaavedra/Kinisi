test - no sense when encapsualted
testUniformGridCannotHaveNegativeLineSeparation

	self
		assert: [ GridRenderer uniformWith: Color red and: -10 ]
		failsWith: 'Grid lines distance cannot be negative'