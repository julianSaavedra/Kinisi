tests
testStateIsNotUpdatedIfGivenStateIsNotValid

	self
		assert: [:scenario | scenario state ]
		isNotChangedWhen: [ workbench state: -2 ]
		because: 'Collatz Conjecture state must be a strictly positive integer'