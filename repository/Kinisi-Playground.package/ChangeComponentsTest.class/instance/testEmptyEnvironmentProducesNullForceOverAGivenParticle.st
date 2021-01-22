tests
testEmptyEnvironmentProducesNullForceOverAGivenParticle

	| environment |
	environment := ChangeEnvironment2 empty.

	self assert: (environment totalForceOver: particle) isZero