tests
testExampleAppliesSteppingDefinitionWithRepetition

	| workbench example steppingDelta repetitions |
	workbench := self workbench.
	steppingDelta := 5.
	repetitions := 10.
	example := LabWorkbenchExampleSetting
		           apply: NullWorkbenchSetting new
					applyStepping: (SteppingWorkbenchSetting repeat: repetitions steppingBy: steppingDelta)
		           withPeriod: self twoSeconds
		           withAll: {}.
		
	example applyOn: workbench.
	
	self assert: workbench steppingWillRepeat: repetitions steppingBy: steppingDelta