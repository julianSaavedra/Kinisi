initialization
initializeParticleObservationList

	particleObservationList := self newList.
	particleObservationList displayBlock: [:particle | particle particleName ].
	self resetParticleObservationList