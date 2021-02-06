test - old - to removed
testRemovingParticleFromAnotherUniverseFailsEvenIfTargetUniverseHasAnEqualParticle

	| universeObservation observationToBeRemoved |
	self flag: 'This test an behaviour may not make sense anymore, as the scenario will be inmutable and be managed through the workbench.'.
	universeObservation := self universeObservationWithParticleAOnly.
	observationToBeRemoved := self universeObservationWithParticleAOnly particles first.
	
	self assert: universeObservation particles first observesTheSameAs: observationToBeRemoved.
	self
		should: [ universeObservation remove: observationToBeRemoved ]
		raise: ExperimentError
		whoseDescriptionIncludes: 'Particle is not included in this universe'