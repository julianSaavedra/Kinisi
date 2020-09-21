asserting
assert: expectedSteps hasAll: result

	| resultSteps |

	resultSteps := result
		withTimeAndStateCollect: [ :step :state | SimulationStepResult at: step with: state ].
	expectedSteps
		do: [ :expectedStep | 
			resultSteps
				detect: [ :resultStep | resultStep time = expectedStep time ]
				ifFound:
					[ :matchingResult | self assert: matchingResult value equals: expectedStep value ]
				ifNone: [ self fail ] ]