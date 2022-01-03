initialization
setModelBeforeInitialization: anAmount

	super setModelBeforeInitialization: anAmount.
	currentNumber := anAmount.
	numberChangeBlock := [:newAmount | ].
	postModelChangeAction := [  ]