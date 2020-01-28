as yet unclassified
startFowarding

	| delay |
	delay := Delay forMilliseconds: milliseconds.

	[ packages do: [:package |
		consumer process: package.
		 delay wait ]] forkAt: Processor userSchedulingPriority named: 'SimulationStepResultDelayedFowarding'