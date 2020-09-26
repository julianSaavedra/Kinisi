private
removeButtonAction

	particleObservationList selectedItem ifNotNil: [:selection |
		selection removeYourselfFromUniverse ].
