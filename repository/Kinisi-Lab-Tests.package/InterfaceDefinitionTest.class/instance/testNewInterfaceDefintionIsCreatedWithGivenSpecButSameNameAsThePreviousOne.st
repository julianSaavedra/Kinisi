tests
testNewInterfaceDefintionIsCreatedWithGivenSpecButSameNameAsThePreviousOne

	| originalDefinition newDefinition |
	originalDefinition := InterfaceDefinition
		                      named: 'OriginalDefinition'
		                      with: self newInterfaceSpec.

	newDefinition := originalDefinition spec: self newInterfaceSpec.

	self deny: newDefinition identicalTo: originalDefinition.
	self assert: newDefinition name equals: originalDefinition name.
	self deny: newDefinition spec equals: originalDefinition spec