initialization
initializeFor: targetDelta and: targetEndingMode

	delta := targetDelta.
	endingModeAndDeltaConsistencyValidator := SteppingEndingModeAndDeltaConsistencyValidator for: targetEndingMode