asserting
assert: expectedSteps containsResultAt: index with: state

	expectedSteps
		detect: [:result | result time = index ]
		ifFound: [:matchingResult | self assert: matchingResult value equals: state ]
		ifNone: [ self fail ]