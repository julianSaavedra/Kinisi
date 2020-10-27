tests
testGridIsRenderedWithRedColor

	| view renderer red |
	view := RTView new.
	red := Color red.
	renderer := GridRenderer with: red and: 25.

	renderer drawIn: view basedOn: nil.

	self assert: [ :grid | grid color = red ] withGridIn: view