tests
assertExampleIsAppliedOnWorkbench: example

	| scenario |
	example applyOn: workbench.

	scenario := workbench modelWorkbench scenario.
	self denyEmpty: scenario particles.
	self assertHasInterfaceDefinitions: workbench