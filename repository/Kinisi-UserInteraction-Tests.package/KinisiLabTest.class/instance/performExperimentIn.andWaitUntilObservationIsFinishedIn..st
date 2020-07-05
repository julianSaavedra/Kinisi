support
performExperimentIn: lab andWaitUntilObservationIsFinishedIn: interface

	lab performExperiment. 
	self waitWhile: [ interface isObserving ]