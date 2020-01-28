validation
assertValid: selector for: class
	
	(class canUnderstand: selector)
		ifFalse: [  self error: ('Message is not implemented in <1s> hierarchy.' expandMacrosWith: class name) ]
