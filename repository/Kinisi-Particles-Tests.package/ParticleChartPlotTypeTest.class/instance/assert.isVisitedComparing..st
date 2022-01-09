asserting
assert: plotType isVisitedComparing: expectedCode

	plotType accept: self.
	self assert: plotTypeVisitingResult equals: expectedCode