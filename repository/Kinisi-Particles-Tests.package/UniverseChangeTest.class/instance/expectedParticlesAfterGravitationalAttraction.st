test objects - gravitational
expectedParticlesAfterGravitationalAttraction

	| expectedStateA expectedStateB |
	expectedStateA := testResource
		particleNamed: 'ParticleA'
		with: (unitProvider kilogram with: 2e30)
		in: (testResource meterVectorWith: #(159266.259623925 318532.519247849 477798.778871774))		
		withVelocity: (testResource meterPerSecondVectorWith: #(637065.038495699 1274130.0769914 1911195.1154871))
		withAcceleration: (testResource meterPerSquareSecondVectorWith: #(1274130.0769914 2548260.1539828 3822390.23097419)).
	expectedStateB := testResource
		particleNamed: 'ParticleB'
		with: (unitProvider kilogram with: 1e30)
		in: (testResource meterVectorWith: #(681467.480752151 1362934.9615043 2044402.44225645))
		withVelocity: (testResource meterPerSecondVectorWith: #(-1274130.0769914 -2548260.1539828 -3822390.23097419))
		withAcceleration: (testResource meterPerSquareSecondVectorWith: #(-2548260.1539828 -5096520.30796559 -7644780.46194838)).

	^Array with: expectedStateA with: expectedStateB
	