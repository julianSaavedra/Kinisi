instance creation
before: aSelector in: aClass execute: twoArgumentsBlock

	self assertValid: aSelector for: aClass.
	^self new
		initializeOnSelector: aSelector
		in: aClass
		with: (MethodWrapperMode executeBefore: twoArgumentsBlock)