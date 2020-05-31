example
sourceWithCollatzSucession
	| source simulation collatzResults |
	simulation := Simulation
		startingWith: (CollatzConjectureState with: 5)
		changingBy:
			[ :step :currentState | CollatzConjectureStateChange new finalStateFrom: currentState ]
		over: 1
		until:
			[ :step :currentState | currentState = (CollatzConjectureState with: 1) ].
	simulation run.
	collatzResults := simulation result.
	source := LoadableObservationSource new.
	collatzResults
		withTimeAndStateDo: [ :time :state | source load: state ].
	source finish.
	^ source