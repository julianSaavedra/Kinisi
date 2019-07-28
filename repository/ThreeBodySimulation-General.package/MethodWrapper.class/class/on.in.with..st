instance creation
on: aSelector in: aClass with: towArgumentsBlock
 
	self assertValid: aSelector for: aClass.
	^self new initializeOnSelector: aSelector in: aClass with: towArgumentsBlock