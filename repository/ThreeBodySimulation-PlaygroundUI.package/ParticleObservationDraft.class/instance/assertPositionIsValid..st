validation
assertPositionIsValid: aPosition

	universeObservationDraft
		assert: aPosition
		isNotAlreadyOccuppiedExceptBy: self