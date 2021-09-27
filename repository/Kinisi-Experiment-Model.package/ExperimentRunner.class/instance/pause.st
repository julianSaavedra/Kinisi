actions
pause

	simulation status class = EndedExperimentStatus ifFalse: [
		simulation pause ].
	"observation pause"