test
testTwoParticlesBeingPushedByDifferentForces

	| lab increasingVelocityParticle lastUniverseState experimentResultStates forceOnIncreasingVelocityParticle decreasingVelocityParticle forceOnDecreasingVelocityParticle lastStateIncreasingVelocityParticle finalIncreasingVelocity lastStateDecreasingVelocityParticle finalDecreasingVelocity |
	increasingVelocityParticle := workbench modelWorkbench newParticle.
	self assert: increasingVelocityParticle mass equals: resource oneKilogram.
	self assert: increasingVelocityParticle position isZero.
	self assert: increasingVelocityParticle velocity isZero.
	forceOnIncreasingVelocityParticle := resource newtonVectorWith: {1. 0. 0.}.
	increasingVelocityParticle addConstantForce: forceOnIncreasingVelocityParticle named: 'ForceIncreasingVelocity'.
	
	decreasingVelocityParticle := workbench modelWorkbench newParticle.
	decreasingVelocityParticle
		mass: resource twoKilograms;
		position: (resource oneMeterInYVector);
		velocity: (resource meterPerSecondVectorWith: {20. 0. 0}).
	forceOnDecreasingVelocityParticle := resource newtonVectorWith: {-4. 0. 0.}.
	decreasingVelocityParticle addConstantForce: forceOnDecreasingVelocityParticle named: 'ForceDecreasingVelocity'.
	
	workbench steppingWorkbench
		stepBy: resource oneSecond
		over: resource oneSecond * 10.
	lab := KinisiLab using: workbench.
	
	lab runExperiment.
	
	experimentResultStates := lab lastResult withTimeAndStateCollect: [:step :state | state ].
	lastUniverseState := experimentResultStates last.
	lastStateIncreasingVelocityParticle := lastUniverseState particles detect:[:particle | particle particleName = increasingVelocityParticle particleName].
	finalIncreasingVelocity := lastStateIncreasingVelocityParticle velocity.
	self assert: finalIncreasingVelocity equals: (resource meterPerSecondVectorWith: {10. 0. 0}).
	
	lastStateDecreasingVelocityParticle := lastUniverseState particles detect:[:particle | particle particleName = decreasingVelocityParticle particleName].
	finalDecreasingVelocity := lastStateDecreasingVelocityParticle velocity.
	self assert: finalDecreasingVelocity isZero