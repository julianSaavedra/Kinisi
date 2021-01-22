tests
testEnvironmentWithConstantForceComponentProducesForceForParticleOfTwoKilograms

	| expectedForce component environment |
	expectedForce := resource newtonVectorWith: #(1 2 3).
	component := ConstantForceSpecification with: expectedForce.
	environment := ChangeEnvironment2 empty.
	environment := environment on: particle apply: { component }.
	
	self assert: particle mass equals: resource twoKilograms.
	self assert: (environment totalForceOver: particle) equals: expectedForce