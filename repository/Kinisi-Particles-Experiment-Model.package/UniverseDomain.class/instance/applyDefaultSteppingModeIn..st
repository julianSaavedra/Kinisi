domain specification
applyDefaultSteppingModeIn: steppingWorkbench
 
	| second oneSecond |
	second := UnitProvider soleInstance second.
	oneSecond := second with: 1.
	^steppingWorkbench
		stepBy: oneSecond
		over: oneSecond * 10