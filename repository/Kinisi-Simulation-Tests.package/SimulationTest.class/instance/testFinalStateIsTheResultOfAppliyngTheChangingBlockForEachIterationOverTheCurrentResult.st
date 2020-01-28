tests
testFinalStateIsTheResultOfAppliyngTheChangingBlockForEachIterationOverTheCurrentResult

	| simulation finalState |
	
	simulation := Simulation
		startingWith: 0
		changingBy: [:stepDuration :currentState | finalState := currentState + 1 ]
		over: (second with: 0.1)
		during: (second with: 1.1).

	simulation run.

	self assert: finalState equals: 11