simulation
run

	self prepareToRun.
	stepper
		stepFrom: initialState
		applying: change
		andWithEachDo: [:stepIndex :stepState | self process: stepState at: stepIndex ].
	self performPostRunActions