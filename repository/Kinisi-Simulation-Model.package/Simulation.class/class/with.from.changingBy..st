instance creation
with: steppingDefinition from: initialState changingBy: changeSpecification
 
	^self new
		initializeWith: steppingDefinition
		from: initialState
		changingBy: changeSpecification