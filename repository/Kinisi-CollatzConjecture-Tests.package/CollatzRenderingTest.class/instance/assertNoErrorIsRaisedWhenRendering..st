asserting
assertNoErrorIsRaisedWhenRendering: scenario

	| renderer |
	renderer := CollatzConjectureStateRenderer basedOn: scenario.
	self shouldnt: [ renderer drawIn: canvas basedOn: scenario state ] raise: Error