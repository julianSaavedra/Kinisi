tests
testEnvironmentWithConstantAccelerationComponentProducesForceForParticleOfTwoKilograms

	| component expectedForce environment |
	component := ConstantAccelerationSpecification with: (resource meterPerSquareSecondVectorWith: #(1 2 3)).
	environment := ChangeEnvironment2 empty.
	environment := environment on: particle apply: { component }.
	
	self assert: particle mass equals: resource twoKilograms.
	expectedForce := resource newtonVectorWith: #(2 4 6).
	self assert: (environment totalForceOver: particle) equals: expectedForce 