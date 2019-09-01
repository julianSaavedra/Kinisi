private
elementBasedOn: particleState

	| element |
	element := RTElement new.
	element model: particleState.
	^element