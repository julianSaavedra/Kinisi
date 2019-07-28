validation
assertValidSize: newSize

	newSize < self minimunSize
		ifTrue: [ UserInterfaceError signal: ('Grid size cannot be minor than <1s>' expandMacrosWith: newSize asString) ]