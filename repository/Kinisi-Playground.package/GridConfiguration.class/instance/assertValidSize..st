validation
assertValidSize: newSize

	newSize < self minimunSize
		ifTrue: [ ExperimentError signal: ('Grid size cannot be smaller than <1s>' expandMacrosWith: self minimunSize asString) ]