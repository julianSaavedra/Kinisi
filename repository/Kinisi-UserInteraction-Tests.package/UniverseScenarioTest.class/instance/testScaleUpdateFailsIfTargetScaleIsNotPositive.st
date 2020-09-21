test - scenario depiction
testScaleUpdateFailsIfTargetScaleIsNotPositive

	| oneMeter originalScale |
	oneMeter := UnitProvider soleInstance meter with: 1.
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