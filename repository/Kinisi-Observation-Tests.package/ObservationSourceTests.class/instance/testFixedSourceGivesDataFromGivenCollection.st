tests - to review
testFixedSourceGivesDataFromGivenCollection

	| dataToBeSourced source |
	dataToBeSourced := #(#Element1 #Element2 #Element3).
	source := ObsevationFixedSource withAll: dataToBeSourced.
	
	dataToBeSourced do: [:dataElement |
		self assert: dataElement equals: source next ]