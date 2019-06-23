private - utilities
labelBasedOn: oneDimensionPosition

	^'<1s> <2s>'
		expandMacrosWith: oneDimensionPosition amount asString
		with: oneDimensionPosition unit sign asString