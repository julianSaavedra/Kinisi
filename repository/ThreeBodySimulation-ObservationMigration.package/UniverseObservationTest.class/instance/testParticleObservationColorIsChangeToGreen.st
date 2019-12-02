tests
testParticleObservationColorIsChangeToGreen

	| universeObservation targetColor draft particleObservation |
	targetColor := Color green.
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	draft save.
	
	particleObservation := universeObservation particleObservations first.
	self deny: particleObservation color equals: targetColor.
	particleObservation color: targetColor.
	self assert: particleObservation color equals: targetColor.
	particleObservation := universeObservation particleObservations first.
	self assert: particleObservation color equals: targetColor