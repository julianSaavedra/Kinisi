tests - reduntant
testFinalStateIsTheResultOfApplyingTheChangeOverTheInitalStateUntilTheEnd

	| simulation steppingDefinition |
	steppingDefinition := SteppingDefinition repeat: 10.
	simulation := Simulation
		with: steppingDefinition
		from: 0
		changingBy: self plusOne.

	simulation run.

	self
		assertLastStateIn: simulation result
		satisfies: [:lastState | lastState = 10 ]