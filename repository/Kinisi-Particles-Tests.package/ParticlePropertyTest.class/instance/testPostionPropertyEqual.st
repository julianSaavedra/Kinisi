tests
testPostionPropertyEqual

	| position anotherPosition |
	position := ParticleProperty position.
	anotherPosition := ParticleProperty position.
	
	self assert: position equals: anotherPosition.
	self deny: position identicalTo: anotherPosition.
	self deny: position equals: ParticleProperty velocity.
	self deny: position equals: ParticleProperty acceleration