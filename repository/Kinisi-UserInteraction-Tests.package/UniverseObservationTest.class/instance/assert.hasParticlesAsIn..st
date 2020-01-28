asserting
assert: universeState hasParticlesAsIn: universeObservation

	| particleStatesInUniverseState particleObservations |
	particleObservations := universeObservation particles.
	particleStatesInUniverseState := universeState particles.

	self
		assert: particleObservations size
		equals: particleStatesInUniverseState size.
	self assert: (particleObservations allSatisfy: [:observation |
		particleStatesInUniverseState includes: observation particleState])