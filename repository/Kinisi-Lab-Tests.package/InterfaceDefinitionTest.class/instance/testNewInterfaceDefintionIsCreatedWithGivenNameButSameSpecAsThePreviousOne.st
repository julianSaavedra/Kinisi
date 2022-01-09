tests
testNewInterfaceDefintionIsCreatedWithGivenNameButSameSpecAsThePreviousOne

	| originalDefinition newDefinition |
	originalDefinition := InterfaceDefinition
		                      named: 'OriginalDefinition'
		                      with: self newInterfaceSpec.

	newDefinition := originalDefinition name: 'NewDefinition'.

	self deny: newDefinition identicalTo: originalDefinition.
	self assert: newDefinition name equals: 'NewDefinition'.
	self assert: newDefinition spec equals: originalDefinition spec