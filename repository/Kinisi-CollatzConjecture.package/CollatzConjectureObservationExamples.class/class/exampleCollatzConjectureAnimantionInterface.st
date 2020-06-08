example
exampleCollatzConjectureAnimantionInterface
	| canvas renderer animationInterface observationProcess |
	animationInterface := PluggableObservationInterface
		onStartDo: [ canvas := TRCanvas new.
			canvas
				openInWindowSized: 400 @ 400
				titled: 'Collatz Conjecture Example'.
			renderer := CollatzConjectureStateRenderer
				basedOn: CollatzConjectureDisplaySettings default ]
		processWith: [ :state | renderer draw: state value on: canvas ].
	observationProcess := KinisiObservation
		on: self sourceWithCollatzSucession
		with: animationInterface
		waiting: (Duration seconds: 1).
	observationProcess performExperiment