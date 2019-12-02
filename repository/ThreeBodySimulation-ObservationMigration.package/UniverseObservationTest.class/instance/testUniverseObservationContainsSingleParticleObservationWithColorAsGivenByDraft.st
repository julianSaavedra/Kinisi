tests
testUniverseObservationContainsSingleParticleObservationWithColorAsGivenByDraft

	| universeObservation draft particleObservation |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft. 
	draft
		color: Color green;
		save.

	particleObservation := universeObservation particleObservations first.	
	self assert: particleObservation color equals: Color green