tests
testFinalUniverseStateIsEqualToTheOriginalStateIfItHasOneParticle

	| particles originalState universeStateChange |
	particles := OrderedCollection with: (testResource particleNamed: #ParticleA).
	originalState := ObservableUniverseState with: particles.
	universeStateChange := UniverseStateChange from: originalState during: testResource oneSecond. 

	self assert: universeStateChange finalState equals: originalState 
