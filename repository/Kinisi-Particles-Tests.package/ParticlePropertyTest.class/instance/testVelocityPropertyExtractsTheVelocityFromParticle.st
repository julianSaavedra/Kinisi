tests
testVelocityPropertyExtractsTheVelocityFromParticle

	| property particle velocity testResource result |
	testResource := PhysicsTestResource new.
	velocity := testResource meterPerSecondVectorWith: #(1 2 3).
	particle := testResource physicalStateWithVelocity: velocity.
	property := ParticleProperty velocity.
		
	result := property extractFrom: particle.
	
	self assert: result equals: velocity