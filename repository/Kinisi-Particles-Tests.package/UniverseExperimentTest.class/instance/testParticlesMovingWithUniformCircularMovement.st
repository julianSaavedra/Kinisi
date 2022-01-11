test
testParticlesMovingWithUniformCircularMovement

	| lab experimentResultStates clockwiseParticleInitialPosition clockwiseParticleInitialVelocity oneNewton clockwiseParticle counterclockwiseParticleInitialPosition counterclockwiseParticleInitialVelocity counterclockwiseParticle |
	clockwiseParticleInitialPosition := resource meterVectorWith: { 0. 1. 0 }.
	clockwiseParticleInitialVelocity := resource meterPerSecondVectorWith: { 1. 0. 0 }.
	oneNewton := resource newtonWith: 1.
	clockwiseParticle := workbench modelWorkbench newParticle.
	clockwiseParticle
		particleName: 'ClockwiseParticle';
		mass: resource oneKilogram;
		position: clockwiseParticleInitialPosition;
		velocity: clockwiseParticleInitialVelocity;
		addForceClockwisePerpendicularToVelocityWith: oneNewton named: 'Force_Clockwise'.
	counterclockwiseParticleInitialPosition := resource meterVectorWith: { 0. 2. 0 }.
	counterclockwiseParticleInitialVelocity := resource meterPerSecondVectorWith: { -2. 0. 0 }.
	counterclockwiseParticle := workbench modelWorkbench newParticle.
	counterclockwiseParticle
		particleName: 'CounterclockwiseParticle';
		mass: resource oneKilogram;
		position: counterclockwiseParticleInitialPosition;
		velocity: counterclockwiseParticleInitialVelocity;
		addForceCounterclockwisePerpendicularToVelocityWith: oneNewton * 2 named: 'Force_Counterclockwise'.
	workbench steppingWorkbench
		stepBy: resource oneSecond / 10000
		over: resource oneSecond / 100.
	lab := KinisiLab using: workbench.

	self runExperimentUntilHasFinishedIn: lab.

	experimentResultStates := lab lastResult withTimeAndStateCollect: [:step :state | state ].
	self
		assertPostionAndVelocityOf: clockwiseParticle
		remainWithSimilarNormWithinAll: experimentResultStates.
	self
		assertPostionAndVelocityOf: counterclockwiseParticle
		remainWithSimilarNormWithinAll: experimentResultStates