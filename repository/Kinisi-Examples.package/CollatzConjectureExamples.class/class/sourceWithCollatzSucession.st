example
sourceWithCollatzSucession
	| source simulation collatzResults buffer |
	simulation := Simulation
		startingWith: (CollatzConjectureState with: 5)
		changingBy: [ :step :currentState | CollatzConjectureStateChange new finalStateFrom: currentState ]
		over: 1
		until: [ :step :currentState | currentState = (CollatzConjectureState with: 1) ].
	simulation run.
	buffer := Buffer new.
	source := ObservationSource from: buffer.
	simulation result
		withTimeAndStateDo: [:step :state | buffer store: state ].
	buffer close.
	^source