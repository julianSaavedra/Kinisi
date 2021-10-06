API
play

	simulation status class = EndedExperimentStatus
		ifFalse: [ simulation play]
		ifTrue: [ (observation status class = NoObservationStatus or: [observation status class = ObservationTerminated]) ifTrue: [ Error signal: 'Experiment has already ended.' ] ].
	simulation status class = EndedExperimentStatus ifTrue: [ observation resume ]