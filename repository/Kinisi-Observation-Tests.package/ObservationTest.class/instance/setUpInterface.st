running
setUpInterface

	| interface |
	interface := self interfaceStartingWith: [ ] andFinishingWith: [ ].
	interfaces := Array with: interface