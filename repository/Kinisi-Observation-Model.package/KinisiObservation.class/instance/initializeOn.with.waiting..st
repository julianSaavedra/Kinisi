initialization
initializeOn: aSource with: anInterface waiting: aSignal 

	source := aSource.
	interface := anInterface.
	signal := aSignal.
	state := ObservationNotStarted new.
	process := [
		[	self isTerminated ] whileFalse: [
			source next beProcessedBy: self.
			signal wait ]
	] newProcess.
	process name: 'Observation'.
	process priority: Processor activePriority + 1
	"process priority: Processor timingPriority - 1"