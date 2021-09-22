initialization
startRefresshingProcess

	refreshing := [ 
		[ 
			0.5 seconds wait.
			self refresh.
			(ExperimentStatusTestInterpreter on: experiment status)
				experimentHasEnded ] whileFalse
		] forkNamed: 'Experiment Status'