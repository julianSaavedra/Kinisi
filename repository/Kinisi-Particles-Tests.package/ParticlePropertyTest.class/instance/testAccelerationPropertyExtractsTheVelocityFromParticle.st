tests
testAccelerationPropertyExtractsTheVelocityFromParticle

	| property particle acceleration testResource result |
	testResource := PhysicsTestResource new.
	acceleration := testResource meterPerSquareSecondVectorWith: #(1 2 3).
	particle := testResource physicalStateWithAcceleration: acceleration.
	property := ParticleProperty acceleration.
	
	result := property extractFrom: particle.
	
	self assert: result equals: acceleration