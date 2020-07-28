instance creation
with: steppingMode from: initialState changingBy: changeSpecification
 
	^self new
		initializeWith: steppingMode
		from: initialState
		changingBy: changeSpecification