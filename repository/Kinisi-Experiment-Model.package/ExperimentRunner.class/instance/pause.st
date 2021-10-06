actions
pause

	simulation status class = NotStartedExperimentStatus ifTrue: [
		Error signal: 'Experiment has not started.' ].
	(simulation status class = EndedExperimentStatus)
		ifTrue: [ (observation status class = NoObservationStatus or: [observation status class = ObservationTerminated]) ifTrue: [ Error signal: 'Experiment has already ended.' ] ]
		ifFalse: [ simulation pause ].
	observation pause