tests
testFixedSourceGivesDataFromGivenCollection

	| dataToBeSourced source |
	dataToBeSourced := #(#Element1 #Element2 #Element3).
	source := MonitoringFixedSource withAll: dataToBeSourced.
	
	dataToBeSourced do: [:dataElement |
		self assert: dataElement equals: source next ]