configuring
remove: anInterfaceSpec
 
	| newInterfaceSpecs |
	newInterfaceSpecs := interfaceDefinitions copy.
	newInterfaceSpecs remove: anInterfaceSpec.
	^self class withAll: newInterfaceSpecs every: period