tests
assertResultsOf: simulation areIn: observations

	simulation result
		withTimeAndStateDo: [ :step :state | 
			observations
				detect: [ :observation | observation time = step ]
				ifFound: [ :observation | self assert: observation value equals: state ]
				ifNone: [ self fail ] ]