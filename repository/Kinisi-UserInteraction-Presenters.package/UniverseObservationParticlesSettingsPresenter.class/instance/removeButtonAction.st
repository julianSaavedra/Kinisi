private
removeButtonAction

	particleObservationList selectedItem ifNotNil: [:selection |
		universeObservation remove: selection].
