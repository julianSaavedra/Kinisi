test - constant force perpendicular to velocity
testUniverseWithSingleParticleWithForceClockwisePerpendicularToVelocityActingOnItAndNoInitialVelocity

	| particle initialState nineNewtons changeEnvironment environmentBuilder change mass initialPosition finalState |
	mass := testResource kilogramWith: 3.
	particle := testResource physicalStateWith: mass.
	initialPosition := particle position.
	self assert: particle velocity isZero.
	
	initialState := ObservableUniverseState with: particle.
	nineNewtons := testResource newtonWith: 9.
	environmentBuilder := ChangeEnvironmentBuilder for: initialState.
	environmentBuilder addForceClockwisePerpendicularToVelocityWith: nineNewtons for: particle.
	changeEnvironment := environmentBuilder environment.	
	change := UniverseChange
		from: initialState
		with: changeEnvironment
		during: testResource halfSecond.

	finalState := change finalState.

	self
		assertPositionOf: particle
		in: finalState
		is: initialPosition.
	self
		assert: particle
		in: finalState
		with: [:aParticle | self assert: aParticle velocity isZero ]