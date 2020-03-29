instance creation
basedOn: particleDraft with: size using: positionFactor

	self assertValidSize: size.
	self assertValidPositionFactor: positionFactor.
	^self new
		initializeBasedOn: particleDraft
		size: size
		using: positionFactor