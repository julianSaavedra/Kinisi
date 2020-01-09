private
removeButtonPostAction

	particleObservationList selectedItem ifNotNil: [:selection |
		universeObservation remove: selection.
		self resetParticleObservationList ].
	self performUniverseObservationUpdateAction