private - utilities
labelTextFor: axisName with: oneDimensionPosition

	^'<1s>: <2s> <3s>'
		expandMacrosWith:axisName
		with: oneDimensionPosition amount asString
		with: oneDimensionPosition unit sign asString