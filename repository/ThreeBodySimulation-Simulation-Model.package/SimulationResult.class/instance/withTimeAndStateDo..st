accessing
withTimeAndStateDo: aBlockClosure

	simulationSteps do: [:timeAndStatePair |
		aBlockClosure
			value: timeAndStatePair key
			value: timeAndStatePair value ]