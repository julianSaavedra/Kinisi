tests
testParticlesIsAddedToANewUniverse

	| universe particleToBeAdded |
	universe := ObservableUniverseState empty. 
	particleToBeAdded := self particleAInTheOrigin.

	universe := universe add: particleToBeAdded.

	self assert: (universe particles includes: particleToBeAdded)