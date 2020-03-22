tests
testParticleIsNotRenderedIfItIsSetNotToDoSo

	| renderer |	
	renderer := ParticleRenderer basedOn: particle.
	self assert: view elements isEmpty.
	
	particle makeItInvisible.
	renderer drawIn: view basedOn: particle.

	self assert: view elements isEmpty