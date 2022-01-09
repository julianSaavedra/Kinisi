asserting
assert: spec isVisitedComparing: expectedCode

	spec accept: self.
	self assert: visitingResultCode equals: expectedCode