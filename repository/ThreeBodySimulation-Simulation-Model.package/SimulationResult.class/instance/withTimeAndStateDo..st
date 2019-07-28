accessing
withTimeAndStateDo: aBlockClosure

	simulationSteps do: [:timeAndStatePair |
		aBlockClosure
			value: timeAndStatePair time
			value: timeAndStatePair value ]