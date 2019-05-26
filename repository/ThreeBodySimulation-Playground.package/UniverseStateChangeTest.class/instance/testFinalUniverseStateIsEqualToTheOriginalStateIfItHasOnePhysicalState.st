tests
testFinalUniverseStateIsEqualToTheOriginalStateIfItHasOnePhysicalState

	| physicalStates originalState universeStateChange |
	physicalStates := Array with: (testResource physicalStateForParticleInTheOriginNamed: 'ParticleA').
	originalState := ObservableUniverseState with: physicalStates.
	universeStateChange := UniverseStateChange from: originalState during: testResource oneSecond. 

	self assert: universeStateChange finalState equals: originalState 
