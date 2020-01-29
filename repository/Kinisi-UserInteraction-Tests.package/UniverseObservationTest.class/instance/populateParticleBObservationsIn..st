support
populateParticleBObservationsIn: particleObservation

	self particleBUpdateActions do: [:action |
		action value: particleObservation]