tests
testPostionPropertyExtractsThePositionFromParticle

	| property particle position testResource result |
	testResource := PhysicsTestResource new.
	position := testResource oneMeterInAllComponentsVector.
	particle := testResource physicalStateIn: position.
	property := ParticleProperty position.
	
	result := property extractFrom: particle.
	
	self assert: result equals: position