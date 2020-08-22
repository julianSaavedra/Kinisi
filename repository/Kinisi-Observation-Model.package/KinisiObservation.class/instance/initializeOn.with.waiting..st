initialization
initializeOn: aSource with: bananaInterfaces waiting: aSignal 

	source := aSource.
	interfaces := bananaInterfaces.
	signal := aSignal.
	state := ObservationNotStarted new.
	process := [
		[	self isTerminated ] whileFalse: [
			source next beProcessedBy: self.
			signal wait ]
	] newProcess.
	process name: 'Observation'.
	process priority: Processor activePriority + 1