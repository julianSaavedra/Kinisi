initialization
initializeParticleObservationList

	particleList := self newList.
	particleList display: [:particle | particle particleName ].
	self resetParticleObservationList