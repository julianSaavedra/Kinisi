validation
assertNoArgumentsFor: action as: actionName

	action argumentCount isZero ifFalse: [
		BufferError signal: ('Reader''s <1s> action must have zero arguments' expandMacrosWith: actionName) ]