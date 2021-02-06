running
runInforming: consumer

	self resetResults.
	consumer start.
	stepper
		stepFrom: initialState
		applying: change
		andWithEachDo: [:stepIndex :stepState | 
			| stepResult |
			stepResult := SimulationStepResult at: stepIndex with: stepState.
			stepResults add: stepResult.
			consumer process: stepResult].
	consumer finishWith: self result