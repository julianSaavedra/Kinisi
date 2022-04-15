asserting
assertNoErrorIsRaisedWhenRendering: universe

	| renderer |
	renderer := UniverseRenderer basedOn: universe.
	self shouldnt: [ renderer drawIn: canvas basedOn: universe ] raise: Error