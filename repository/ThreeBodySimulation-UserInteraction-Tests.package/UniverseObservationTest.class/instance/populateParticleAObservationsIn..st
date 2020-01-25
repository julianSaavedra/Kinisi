support
populateParticleAObservationsIn: particleObservation

	self particleAUpdateActions do: [:action |
		action value: particleObservation]