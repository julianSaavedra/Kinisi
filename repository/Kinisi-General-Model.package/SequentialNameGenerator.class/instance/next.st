accessing
next

	| newName |
	newName := prefix , nextSuffix asString.
	nextSuffix := nextSuffix + 1.
	
	^newName