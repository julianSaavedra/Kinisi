visitor
applyDefaultSteppingModeIn: steppingWorkbench
 
	steppingWorkbench
		repeatUntilStateSatisfies: [:state | state = (CollatzConjectureState with: 1) ]
		steppingBy: 1