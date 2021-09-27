API
play

	simulation status class = EndedExperimentStatus
		ifFalse: [ simulation play]
		ifTrue: [ Error signal: 'Experiment has already ended.' ] .
	"observationHasStated ifTrue: [ observation resume ]"