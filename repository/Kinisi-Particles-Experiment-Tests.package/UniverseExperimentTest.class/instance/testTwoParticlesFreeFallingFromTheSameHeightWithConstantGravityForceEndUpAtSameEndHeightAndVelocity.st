tests
testTwoParticlesFreeFallingFromTheSameHeightWithConstantGravityForceEndUpAtSameEndHeightAndVelocity

	| lab gravityAcceleration lastUniverseState experimentResultStates leftParticle leftParticlePosition rightParticle rightParticlePosition |
	leftParticle := workbench modelWorkbench newParticle.
	leftParticlePosition := resource meterVectorWith: {-1. 491. 0.}.
	leftParticle position: leftParticlePosition.
	rightParticle := workbench modelWorkbench newParticle.
	rightParticlePosition := resource meterVectorWith: {1. 491. 0.}.
	rightParticle position: rightParticlePosition.
	self assert: leftParticle position y equals: rightParticle position y.
	self assert: leftParticle velocity isZero.
	self assert: rightParticle velocity isZero.
	
	workbench steppingWorkbench
		stepBy: resource oneSecond
		over: resource oneSecond * 10.
	
	gravityAcceleration := resource meterPerSquareSecondVectorWith: {0. -9.82. 0.}.
	leftParticle addConstantAcceleration: gravityAcceleration named: 'GravityAcceleration'.
	rightParticle addConstantAcceleration: gravityAcceleration named: 'GravityAcceleration'.
	lab := KinisiLab using: workbench.
	
	lab runExperiment.
	
	experimentResultStates := lab lastResult withTimeAndStateCollect: [:step :state | state ].
	lastUniverseState := experimentResultStates last.
	lastUniverseState particles pairsDo: [:particle :anotherParticle |
		self assert: particle position y equals: anotherParticle position y.
		self assert: particle velocity equals: anotherParticle velocity ]