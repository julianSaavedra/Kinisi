initialization
startRefresshingProcess

	refreshing := [ 
		[ 
			0.5 seconds wait.
			self refresh.
			experiment hasEnded ] whileFalse
		] forkNamed: 'Experiment Status'