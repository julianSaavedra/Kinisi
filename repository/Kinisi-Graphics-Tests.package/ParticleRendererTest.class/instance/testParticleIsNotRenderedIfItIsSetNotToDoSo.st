tests
testParticleIsNotRenderedIfItIsSetNotToDoSo

	| renderer |	
	renderer := ParticleRenderer basedOn: particle.
	self assert: view elements isEmpty.
	
	particle makeYourselfInvisible.
	renderer drawIn: view basedOn: particle.

	self assert: view elements isEmpty