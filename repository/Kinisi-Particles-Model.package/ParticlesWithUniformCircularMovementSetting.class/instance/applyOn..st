applying
applyOn: workbench

	| resource clockwiseParticleInitialPosition clockwiseParticleInitialVelocity oneNewton clockwiseParticle counterclockwiseParticleInitialPosition counterclockwiseParticleInitialVelocity counterclockwiseParticle |
	resource := PhysicsTestResource new.
	clockwiseParticleInitialPosition := resource meterVectorWith: { 0. 1. 0 }.
	clockwiseParticleInitialVelocity := resource meterPerSecondVectorWith: { 1. 0. 0 }.
	oneNewton := resource newtonWith: 1.
	clockwiseParticle := workbench newParticle.
	clockwiseParticle
		particleName: 'ClockwiseParticle';
		mass: resource oneKilogram;
		position: clockwiseParticleInitialPosition;
		velocity: clockwiseParticleInitialVelocity;
		addForceClockwisePerpendicularToVelocityWith: oneNewton named: 'Force_Clockwise'.
	counterclockwiseParticleInitialPosition := resource meterVectorWith: { 0. 2. 0 }.
	counterclockwiseParticleInitialVelocity := resource meterPerSecondVectorWith: { -2. 0. 0 }.
	counterclockwiseParticle := workbench newParticle.
	counterclockwiseParticle
		particleName: 'CounterclockwiseParticle';
		mass: resource oneKilogram;
		position: counterclockwiseParticleInitialPosition;
		velocity: counterclockwiseParticleInitialVelocity;
		addForceCounterclockwisePerpendicularToVelocityWith: oneNewton * 2 named: 'Force_Counterclockwise'