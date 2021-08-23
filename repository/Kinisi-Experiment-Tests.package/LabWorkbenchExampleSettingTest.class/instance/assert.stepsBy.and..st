asserting
assert: workbench stepsBy: delta and: stepingAssertingBlock

	| steppingWorkbench steppingConfiguration |
	steppingWorkbench := workbench steppingWorkbench.
	self assert: steppingWorkbench delta equals: delta.
	steppingConfiguration := steppingWorkbench accept: self.
	stepingAssertingBlock value: steppingConfiguration