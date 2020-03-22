actions
drawIn: view basedOn: universe

	| visibleParticles |
	visibleParticles := universe particles select: [:particle | particle isVisible ].
	visibleParticles do: [:particleObservation | 
		renderersMapping
			at: particleObservation particleName
			ifPresent: [:renderer | renderer drawIn: view basedOn: particleObservation ]]