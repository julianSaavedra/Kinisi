asserting
assertThereAreNoObservationsInStatusFor: experiment

	| statusInterpreter |
	statusInterpreter := ExperimentStatusTestInterpreter on: experiment status.
	self assert: statusInterpreter experimentIsNotBeingObserved