tests
testStateFailsToBeCreatedWithANonPositiveInteger

	#(0 -1 3.14) do: [:invalidNumber |
		self
			should: [CollatzConjectureState with: invalidNumber]
			raise: Error
			whoseDescriptionIncludes: 'Collatz Conjecture state must be a strictly positive integer'
			description: 'Test did not fail as expected']