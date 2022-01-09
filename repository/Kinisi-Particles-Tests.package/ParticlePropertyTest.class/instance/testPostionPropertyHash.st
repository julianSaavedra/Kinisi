tests
testPostionPropertyHash

	| position anotherPosition |
	position := ParticleProperty position.
	anotherPosition := ParticleProperty position.
	
	self assert: position hash equals: anotherPosition hash.
	self deny: position identicalTo: anotherPosition