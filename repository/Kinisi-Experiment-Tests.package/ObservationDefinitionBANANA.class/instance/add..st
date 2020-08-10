configuring
add: anInterfaceSpec 

	| newInterfaceSpecs |
	newInterfaceSpecs := interfaceSpecs copy.
	newInterfaceSpecs add: anInterfaceSpec.
	^self class withAll: newInterfaceSpecs every: period