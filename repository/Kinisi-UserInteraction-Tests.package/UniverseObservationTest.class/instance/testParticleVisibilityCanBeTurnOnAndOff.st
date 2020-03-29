tests
testParticleVisibilityCanBeTurnOnAndOff

	| universeObservation particleObservation |
	universeObservation := self universeObservationWithOneObservation.
	particleObservation := universeObservation particles first.
	
	self assert: particleObservation isVisible.
	self assert: universeObservation visibleParticles notEmpty.
	particleObservation makeYourselfInvisible.
	
	self deny: particleObservation isVisible.
	self deny: universeObservation visibleParticles notEmpty.
	
	particleObservation makeYourselfVisible.
	
	self assert: particleObservation isVisible.
	self assert: universeObservation visibleParticles notEmpty