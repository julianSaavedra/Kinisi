private
process: value at: time

	| stepResult |
	stepResult := SimulationStepResult at: time with: value.
	self record: stepResult.
	self informConsumer: stepResult