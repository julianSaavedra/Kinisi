printing
printOn: aStream

	| text |
	text := 'Collatz Conjecture: <1s>' expandMacrosWith: number asString.
	aStream nextPutAll: text