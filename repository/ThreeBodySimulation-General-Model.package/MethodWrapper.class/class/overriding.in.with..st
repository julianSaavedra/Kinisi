instance creation
overriding: aSelector in: aClass with: twoArgumentsBlock

	self assertValid: aSelector for: aClass.
	^self new
		initializeOnSelector: aSelector
		in: aClass
		with: (MethodWrapperMode overrideWith: twoArgumentsBlock)