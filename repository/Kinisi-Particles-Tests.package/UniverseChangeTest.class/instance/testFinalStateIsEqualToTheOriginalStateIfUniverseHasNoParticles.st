test
testFinalStateIsEqualToTheOriginalStateIfUniverseHasNoParticles

	| originalState change |
	originalState := ObservableUniverseState empty.
	change := UniverseChange from: originalState during: testResource oneSecond. 

	self assert: change finalState equals: originalState 
