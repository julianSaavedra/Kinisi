as yet unclassified
exampleCollatzConjectureAnimantionInterface


	| simulation collatzResults source canvas renderer animationInterface observationProcess |
	simulation := Simulation
		startingWith: (CollatzConjectureState with: 5)
		changingBy: [:step :currentState | CollatzConjectureStateChange new finalStateFrom: currentState ]
		over: 1
		until: [:step :currentState | currentState = (CollatzConjectureState with: 1) ].
	simulation run.
	
	collatzResults := simulation result. 
	source := LoadableObservationSource new.
	collatzResults withTimeAndStateDo: [:time :state | source load: state ].
	source finish.
	self halt.
	animationInterface := PluggableObservationInterface
		onStartDo: [
			canvas := TRCanvas new.
			canvas openInWindowSized: 400 @ 400 titled: 'Collatz Conjecture Example'.
			renderer := CollatzConjectureStateRenderer basedOn: CollatzConjectureDisplaySettings default]
		processWith: [:state | renderer draw: state value on: canvas ].
	observationProcess := KinisiObservation on: source with: animationInterface waiting: (Duration seconds: 1).
	[observationProcess play] ensure: [ observationProcess terminate ]