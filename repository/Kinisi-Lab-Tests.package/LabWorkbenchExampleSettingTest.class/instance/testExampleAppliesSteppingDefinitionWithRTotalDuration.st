tests
testExampleAppliesSteppingDefinitionWithRTotalDuration

	| workbench example steppingDelta finalStep |
	workbench := self workbench.
	steppingDelta := 2.
	finalStep := 20.
	example := LabWorkbenchExampleSetting
		           apply: NullWorkbenchSetting new
					applyStepping: (SteppingWorkbenchSetting stepBy: steppingDelta over: finalStep)
		           withPeriod: self twoSeconds
		           withAll: {}.
		
	example applyOn: workbench.
	
	self assert: workbench steppingWillStepBy: steppingDelta over: finalStep