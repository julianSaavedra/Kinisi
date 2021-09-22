asdasd
pause

	status class = EndedExperimentStatus ifFalse: [
		experimentProcess suspend.
		status := PausedExperimentStatus new.].
	observation pause