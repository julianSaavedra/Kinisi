test - scenario depiction
testParticleVisibilityCanBeTurnOnAndOff

	| particle |
	particle := workbench newParticle.
	
	self assert: particle isVisible.
	self assert: (workbench scenario visibleParticles includes: particle).

	particle makeYourselfInvisible.
	
	self deny: particle isVisible.
	self deny: (workbench scenario visibleParticles includes: particle).
	
	particle makeYourselfVisible.
	
	self assert: particle isVisible.
	self assert: (workbench scenario visibleParticles includes: particle)