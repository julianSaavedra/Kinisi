tests - results
testFinalStateIsTheResultOfApplyingTheChangeOverTheInitalStateUntilTheEnd

	| simulation finalState |
	simulation := Simulation
		startingWith: 0
		changingBy: [:stepDuration :currentState | currentState + 1 ]
		over: (second with: 1)
		during: (second with: 10).

	simulation run.

	finalState := (simulation result withTimeAndStateCollect: [:time :state | state]) last.
	self assert: finalState equals: 10