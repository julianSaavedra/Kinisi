validation
assertValidSize: newSize

	newSize < self minimunSize
		ifTrue: [ UserInterfaceError signal: ('Grid size cannot be smaller than <1s>' expandMacrosWith: self minimunSize asString) ]