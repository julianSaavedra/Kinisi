domain specification
applyDefaultSteppingModeIn: steppingWorkbench
 
	| resource |
	resource := PhysicsTestResource new.
	^steppingWorkbench
		stepBy: resource oneSecond
		over: resource oneSecond * 10