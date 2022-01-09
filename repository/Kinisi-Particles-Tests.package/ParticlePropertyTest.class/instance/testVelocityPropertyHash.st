tests
testVelocityPropertyHash

	| velocity anotherVelocity |
	velocity := ParticleProperty velocity.
	anotherVelocity := ParticleProperty velocity.
	
	self assert: velocity hash equals: anotherVelocity hash.
	self deny: velocity identicalTo: anotherVelocity