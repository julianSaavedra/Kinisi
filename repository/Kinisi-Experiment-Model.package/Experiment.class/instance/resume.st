controlling
resume

	status class = EndedExperimentStatus ifFalse: [
		experimentProcess resume.
		status := RunningExperimentStatus new].
	observationHasStated ifTrue: [ observation resume ]