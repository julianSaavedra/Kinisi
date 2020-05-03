tests
testFixedSourceKeepsGivingLastDataElementIfThereAreNoNewData

	| dataToBeSourced source |
	dataToBeSourced := #(#Element1 #Element2 #Element3).
	source := MonitoringFixedSource withAll: dataToBeSourced.
	
	dataToBeSourced do: [:dataElement | source current ].
	
	self assert: source current equals: dataToBeSourced last