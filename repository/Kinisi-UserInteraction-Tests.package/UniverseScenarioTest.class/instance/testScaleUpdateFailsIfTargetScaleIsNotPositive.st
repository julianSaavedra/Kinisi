test - scenario depiction
testScaleUpdateFailsIfTargetScaleIsNotPositive

	| oneMeter originalScale |
	oneMeter := resource oneMeter.
	originalScale := workbench scenario scale.
	
	self
		should: [workbench scale: oneMeter negated]
		raise: UserInterfaceError
		whoseDescriptionIncludes: 'Scale must be positive'.
	self assert: workbench scenario scale equals: originalScale.

	self
		should: [workbench scale: oneMeter * 0]
		raise: UserInterfaceError
		whoseDescriptionIncludes: 'Scale must be positive'.
	self assert: workbench scenario scale equals: originalScale