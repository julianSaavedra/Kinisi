wrapping
run: selector with: arguments in: receiver

	^wrappingMode
		valueOf: selector
		whenSentTo: receiver
		with: arguments
		and: wrappedMethod