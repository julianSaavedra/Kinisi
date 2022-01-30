private - example item definitions
particlesExampleItemDefinitions

	| exampleSource |
	exampleSource := ParticlesWorkbenchExampleSettingSource new.
	^{
		KinisiExampleItemDefinition
			with: exampleSource particleWithUniformLinearMotionAlongXOnly
			labeled: 'Particle with Uniform Linear Motion along X only'.
		KinisiExampleItemDefinition
			with: exampleSource particleWithUniformLinearMotionInXAndYDimensions
			labeled: 'Particle with Uniform Linear Motion in X and Y dimensions'.
		KinisiExampleItemDefinition
			with: exampleSource particleWithConstantAccelerationMovingAlongXOnly
			labeled: 'Particle with constant acceleration moving along X only'.
		KinisiExampleItemDefinition
			with: exampleSource particleWithConstantForceInXandYDimensions
			labeled: 'Particle with constant force moving in X and Y dimensions'.
		KinisiExampleItemDefinition
			with: exampleSource particleFreeFallingWithConstantAcceleration
			labeled: 'Particle free falling with constant acceleration'.
		KinisiExampleItemDefinition
			with: exampleSource projectileGoingUpAndDown
			labeled: 'Projectile goes up and down'.
		KinisiExampleItemDefinition
			with: exampleSource projectilesWithSameVelocityInXDimensionAndDifferentInitialVelocityInYDimension
			labeled: 'Projectiles reaching different heights'.
		KinisiExampleItemDefinition
			with: exampleSource particlesMovingWithUniformCircularMovement
			labeled: 'Particles moving with Uniform Circular Movement'.
		KinisiExampleItemDefinition
			with: exampleSource earthAndSun
			labeled: 'Earth and Sun'.
		KinisiExampleItemDefinition
			with: exampleSource twoPlanetsSpinningAround
			labeled: 'Two planets spinning around'.
	KinisiExampleItemDefinition
			with: exampleSource threeStillParticlesEquidistantFromTheOriginWithGravitationalAttraction
			labeled: 'Three still particles equidistant from the Origin with Gravitational attraction'
	}