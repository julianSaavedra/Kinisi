initialization
initializeParticleObservationList

	particleObservationList := self newList.
	particleObservationList
		display: [ :particle | particle particleName ].
	self resetParticleObservationList