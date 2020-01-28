support
simulationGeneratingFrom: initialState to: finalState informingStepsTo: consumer

	| oneSecond |
	oneSecond := UnitProvider soleInstance second with: 1.
	^self
		simulationOver: oneSecond
		during: oneSecond * (finalState - initialState)
		informingStepsTo: consumer