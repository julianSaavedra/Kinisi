tests
testVelocityPropertyEqual

	| velocity anotherVelocity |
	velocity := ParticleProperty velocity.
	anotherVelocity := ParticleProperty velocity.
	
	self assert: velocity equals: anotherVelocity.
	self deny: velocity identicalTo: anotherVelocity.
	self deny: velocity equals: ParticleProperty position.
	self deny: velocity equals: ParticleProperty acceleration