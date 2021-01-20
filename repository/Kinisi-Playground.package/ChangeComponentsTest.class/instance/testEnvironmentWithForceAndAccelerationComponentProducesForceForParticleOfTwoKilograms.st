tests
testEnvironmentWithForceAndAccelerationComponentProducesForceForParticleOfTwoKilograms

	| expectedForce environment acceleration force |
	acceleration := ConstantAccelerationSpecification with: (resource meterPerSquareSecondVectorWith: #(1 2 3)).
	force := ConstantForceSpecification with: (resource newtonVectorWith: #(1 2 3)).
	
	environment := ChangeEnvironment2 empty.
	environment := environment on: particle apply: {acceleration. force}.
	
	self assert: particle mass equals: resource twoKilograms.
	expectedForce := resource newtonVectorWith: #(3 6 9).
	self assert: (environment totalForceOver: particle) equals: expectedForce 