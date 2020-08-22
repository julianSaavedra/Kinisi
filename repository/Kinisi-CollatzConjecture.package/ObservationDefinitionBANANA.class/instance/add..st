configuring
add: anInterfaceDefinition 

	| newInterfaceDefinitions |
	newInterfaceDefinitions := interfaceDefinitions copy.
	newInterfaceDefinitions add: anInterfaceDefinition.
	^self class withAll: newInterfaceDefinitions every: period