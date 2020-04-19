validating
assertValidDataAction: targetDataAction
 
	(targetDataAction numArgs > 1)
		ifTrue: [ 	BufferError signal: 'Reader''s Data action must have zero or one argument']