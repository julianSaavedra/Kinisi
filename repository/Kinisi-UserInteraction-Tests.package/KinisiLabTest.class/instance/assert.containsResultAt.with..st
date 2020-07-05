asserting
assert: expectedResults containsResultAt: step with: state

	expectedResults
		detect: [:result | result time = step ]
		ifFound: [:matchingResult | self assert: matchingResult value equals: state ]
		ifNone: [ self fail ]