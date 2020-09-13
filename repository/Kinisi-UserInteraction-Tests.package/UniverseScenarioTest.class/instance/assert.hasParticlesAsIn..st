asserting
assert: universeState hasParticlesAsIn: universeScenario

	| particleStates particleScenarios |
	particleScenarios := universeScenario particles.
	particleStates := universeState particles.

	self
		assert: particleScenarios size
		equals: particleStates size.
	self assert: (particleScenarios allSatisfy: [:observation |
		particleStates includes: observation particleState])