action
newResultAt: time with: value

	| stepResult |
	stepResult := SimulationStepResult at: time with: value.
	stepResults add: stepResult.
	self informConsumer: stepResult