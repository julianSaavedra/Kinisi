support
performExperimentIn: lab andWaitUntilObservationIsFinishedIn: interface

	lab runExperiment. 
	self waitWhile: [ interface isObserving ]