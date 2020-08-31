asserting
assert: labResult containsAll: expectedSteps

	labResult withTimeAndStateDo: [:step :state |
		self assert: expectedSteps containsResultAt: step with: state ]