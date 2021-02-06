initialize
printOn: aStream

	| text |
	text := simulationSteps
		ifEmpty: ['Result has no steps' ]
		ifNotEmpty: ['Result: <1s> steps [Final at: <2s>]'
				expandMacrosWith: simulationSteps size asString
				with: self finalTime asString ].
	
	aStream nextPutAll: text