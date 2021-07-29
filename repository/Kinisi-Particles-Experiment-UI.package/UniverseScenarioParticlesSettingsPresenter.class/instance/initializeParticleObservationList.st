initialization
initializeParticleObservationList

	particleList := self newList.
	particleList
		display: [:particle | particle particleName ];
		beSingleSelection.
	self resetParticleObservationList