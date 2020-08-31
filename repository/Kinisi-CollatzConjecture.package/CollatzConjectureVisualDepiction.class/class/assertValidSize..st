validation
assertValidSize: targetSize
 
	(targetSize between: self sizeMinimun and: self sizeMaximun) ifFalse: [
		Error signal:
			('Number size must be between <1s> and <2s>'
				expandMacrosWith: self sizeMinimun asString
				with: self sizeMaximun asString)]