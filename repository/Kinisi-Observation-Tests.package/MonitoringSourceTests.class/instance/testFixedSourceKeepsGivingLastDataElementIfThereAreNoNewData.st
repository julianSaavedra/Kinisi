tests
testFixedSourceKeepsGivingLastDataElementIfThereAreNoNewData

	| dataToBeSourced source |
	dataToBeSourced := #(#Element1 #Element2 #Element3).
	source := MonitoringFixedSource withAll: dataToBeSourced.
	
	dataToBeSourced do: [:dataElement | source next ].
	
	self assert: source next equals: dataToBeSourced last