tests
testFinalUniverseStateOfUniverseWithTwoParticlesResultsAsExpected

	| originalParticles originalState universeStateChange expectedParticles expectedState |
	"Set particles to be in such position and do the math accordingly. See what was done in Interation / PhysicalStateChange tests."
	originalParticles := OrderedCollection with: (testResource particleNamed: #ParticleA) with: (testResource particleNamed: #ParticleB).
	originalState := ObservableUniverseState with: originalParticles.
	
	universeStateChange := UniverseStateChange from: originalState during: testResource oneSecond. 

	expectedParticles := OrderedCollection with: (testResource particleNamed: #ParticleA) with: (testResource particleNamed: #ParticleB).
	expectedState := ObservableUniverseState with: expectedParticles.
	
	self assert: universeStateChange finalState equals: 1 
