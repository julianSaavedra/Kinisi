instance creation
named: componentName with: forceModule with: forceOrientation

	self assertValidName: componentName.
	^self new initializeNamed: componentName with: forceModule with: forceOrientation