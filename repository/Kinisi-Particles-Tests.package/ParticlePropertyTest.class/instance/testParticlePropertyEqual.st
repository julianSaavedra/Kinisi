tests
testParticlePropertyEqual

	| position anotherPosition |
	position := ParticleProperty position.
	anotherPosition := ParticleProperty position.
	
	self assert: position equals: anotherPosition.
	self deny: position identicalTo: anotherPosition.
	self deny: position equals: ParticleProperty velocity