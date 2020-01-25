validation
assertNameIsValid: futureName

	self assertNotEmpty: futureName.
	universeObservationDraft
		assert: futureName
		isNotAlreadyUsedExceptBy: self