accessing
next

	| current |
	current := data first.
	data := data allButFirst ifNotEmpty: [:newData | newData ] ifEmpty: [ data ] .
	^current