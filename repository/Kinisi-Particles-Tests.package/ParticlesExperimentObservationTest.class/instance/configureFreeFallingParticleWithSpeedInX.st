tests
configureFreeFallingParticleWithSpeedInX

	| particle modelWorkbench testResource |
	testResource := PhysicsTestResource new.
	modelWorkbench := lab workbench modelWorkbench.
	particle := modelWorkbench newParticle.
	particle color: Color red.
	particle position: testResource nullPosition.
	particle velocity:
		(testResource meterPerSecondVectorWith: #( 1 49.1 0 )).
	particle
		addConstantAcceleration:
		(testResource meterPerSquareSecondVectorWith: #( 0 -9.82 0 ))
		named: 'Acceleration'.
	"lab workbench steppingWorkbench delta: testResource oneSecond / 10."